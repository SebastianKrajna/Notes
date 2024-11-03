import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/core/localizations/generated/l10n.dart';
import 'package:notes/features/notes/domain/repositories/note_repository.dart';

part 'add_note_event.dart';
part 'add_note_state.dart';
part 'generated/add_note_bloc.freezed.dart';

class AddNoteBloc extends Bloc<AddNoteEvent, AddNoteState> {
  final NoteRepository _noteRepository;

  AddNoteBloc({
    required NoteRepository noteRepository,
  })  : _noteRepository = noteRepository,
        super(const AddNoteState()) {
    on<AddNoteContentChanged>(_onContentChanged);
    on<AddNoteSubmitted>(_onSubmitted);
  }

  void _onContentChanged(
    AddNoteContentChanged event,
    Emitter<AddNoteState> emit,
  ) {
    emit(state.copyWith(content: event.content));
  }

  Future<void> _onSubmitted(
    AddNoteSubmitted event,
    Emitter<AddNoteState> emit,
  ) async {
    emit(state.copyWith(status: AddNoteStatus.loading));

    await Future.delayed(const Duration(seconds: 1));

    final randomResult = Random().nextBool();

    if (randomResult) {
      try {
      await _noteRepository.addNote(state.content);
      emit(state.copyWith(status: AddNoteStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: AddNoteStatus.failure,
        errorMessage: AppText.current.an_error_occurred_while_saving_note,
        ));
      }
    } else {
      emit(state.copyWith(
        status: AddNoteStatus.failure,
        errorMessage: AppText.current.random_failure_message,
      ));
    }
  }
}

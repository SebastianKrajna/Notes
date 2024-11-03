import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes/core/localizations/generated/l10n.dart'; 
import 'package:notes/features/notes/domain/entities/note.dart';
import 'package:notes/features/notes/domain/repositories/note_repository.dart';
import 'package:rxdart/rxdart.dart';

part 'notes_list_event.dart';
part 'notes_list_state.dart';
part 'generated/notes_list_bloc.freezed.dart';

class NotesListBloc extends Bloc<NotesListEvent, NotesListState> {
  final NoteRepository _noteRepository;

  NotesListBloc({
    required NoteRepository noteRepository,
  })  : _noteRepository = noteRepository,
        super(const NotesListState()) {
    on<NotesListLoadRequested>(_onLoadRequested);
  }

  Future<void> _onLoadRequested(
    NotesListLoadRequested event,
    Emitter<NotesListState> emit,
  ) async {
    emit(state.copyWith(status: NotesListStatus.loading));

    await Future.delayed(const Duration(seconds: 2));

    try {
      await emit.forEach<List<Note>>(
        _noteRepository
            .watchNotes()
            .distinct()
            .debounceTime(const Duration(milliseconds: 100)),
        onData: (notes) => state.copyWith(
          status: NotesListStatus.success,
          notes: notes,
        ),
        // TODO: Handle exception to show correct error message
        onError: (error, stackTrace) => state.copyWith(
          notes: [],
          status: NotesListStatus.failure,
          errorMessage: AppText.current.an_error_occurred_while_loading_notes,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        status: NotesListStatus.failure,
        errorMessage: AppText.current.an_unknown_error_occurred,
      ));
    }
  }
}

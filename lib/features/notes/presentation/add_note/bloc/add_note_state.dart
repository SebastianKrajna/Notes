part of 'add_note_bloc.dart';

enum AddNoteStatus { initial, loading, success, failure }

@freezed
class AddNoteState with _$AddNoteState {
  const factory AddNoteState({
    @Default(AddNoteStatus.initial) AddNoteStatus status,
    @Default('') String content,
    String? errorMessage,
  }) = _AddNoteState;
} 
 
part of 'notes_list_bloc.dart';

enum NotesListStatus { initial, loading, success, failure }

@freezed
class NotesListState with _$NotesListState {
  const factory NotesListState({
    @Default(NotesListStatus.initial) NotesListStatus status,
    @Default([]) List<Note> notes,
    String? errorMessage,
  }) = _NotesListState;
} 
part of 'add_note_bloc.dart';

@freezed
class AddNoteEvent with _$AddNoteEvent {
  const factory AddNoteEvent.contentChanged(String content) = AddNoteContentChanged;
  const factory AddNoteEvent.submitted() = AddNoteSubmitted;
} 
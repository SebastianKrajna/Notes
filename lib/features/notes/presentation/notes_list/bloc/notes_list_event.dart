 
part of 'notes_list_bloc.dart';

@freezed
class NotesListEvent with _$NotesListEvent {
  const factory NotesListEvent.loadRequested() = NotesListLoadRequested; 
} 
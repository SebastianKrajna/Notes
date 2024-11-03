import 'package:notes/features/notes/domain/entities/note.dart';

abstract class NoteRepository {
  Stream<List<Note>> watchNotes();
  Future<List<Note>> getNotes();
  Future<void> addNote(String content);
} 
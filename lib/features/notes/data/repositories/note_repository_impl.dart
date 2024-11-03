import 'package:hive_ce/hive.dart';
import 'package:notes/features/notes/domain/entities/note.dart';
import 'package:notes/features/notes/domain/repositories/note_repository.dart';
import 'package:rxdart/rxdart.dart';

class NoteRepositoryImpl implements NoteRepository {
  final CollectionBox<Note> _notesBox;
  final _notesSubject = BehaviorSubject<List<Note>>();

  NoteRepositoryImpl(this._notesBox) {
    // Inicjalizacja początkowej wartości
    getNotes().then((notes) => _notesSubject.add(notes));
  }

  @override
  Stream<List<Note>> watchNotes() {
    return _notesSubject.stream;
  }

  @override
  Future<List<Note>> getNotes() async {
    final values = await _notesBox.getAllValues();
    return values.values.toList();
  }

  @override
  Future<void> addNote(String content) async {
    final note = Note(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      creationDate: DateTime.now(),
    );
    
    await _notesBox.put(note.id, note);
    
    // Aktualizacja streamu
    final currentNotes = await getNotes();
    _notesSubject.add(currentNotes);
  }

  void dispose() {
    _notesSubject.close();
  }
} 
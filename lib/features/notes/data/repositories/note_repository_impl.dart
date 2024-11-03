import 'package:hive_ce/hive.dart';
import 'package:notes/features/notes/domain/entities/note.dart';
import 'package:notes/features/notes/domain/repositories/note_repository.dart';
import 'package:rxdart/rxdart.dart';

/// Implementation of [NoteRepository] that uses Hive database for persistence
/// and RxDart for reactive state management.
///
/// This repository manages the storage and retrieval of notes, providing both
/// synchronous and reactive access to the notes data.
class NoteRepositoryImpl implements NoteRepository {
  /// The Hive box used for storing notes.
  final CollectionBox<Note> _notesBox;

  /// BehaviorSubject that maintains the current list of notes and notifies subscribers
  /// of any changes.
  final _notesSubject = BehaviorSubject<List<Note>>();

  /// Creates a new instance of [NoteRepositoryImpl].
  ///
  /// Requires a [CollectionBox] instance for note storage.
  /// Initializes the notes stream with current notes from storage.
  NoteRepositoryImpl(this._notesBox) {
    getNotes().then((notes) => _notesSubject.add(notes));
  }

  /// Provides a stream of note lists that updates whenever the notes collection changes.
  ///
  /// Returns a [Stream] of [List<Note>] that emits the current list of notes
  /// and subsequent updates.
  @override
  Stream<List<Note>> watchNotes() {
    return _notesSubject.stream;
  }

  /// Retrieves all notes from storage.
  ///
  /// Returns a [Future] that completes with a [List<Note>] containing all stored notes.
  @override
  Future<List<Note>> getNotes() async {
    final values = await _notesBox.getAllValues();
    return values.values.toList();
  }

  /// Adds a new note with the specified content.
  ///
  /// [content] is the text content of the note to be added.
  ///
  /// Creates a new [Note] with:
  /// - A unique ID based on the current timestamp
  /// - The provided content
  /// - The current timestamp as creation date
  ///
  /// Updates the notes stream after adding the new note.
  @override
  Future<void> addNote(String content) async {
    final note = Note(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      creationDate: DateTime.now(),
    );
    
    await _notesBox.put(note.id, note);
    
    final currentNotes = await getNotes();
    _notesSubject.add(currentNotes);
  }

  /// Closes the notes stream and cleans up resources.
  ///
  /// Should be called when the repository is no longer needed to prevent memory leaks.
  void dispose() {
    _notesSubject.close();
  }
} 
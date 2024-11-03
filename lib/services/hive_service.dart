import 'package:hive_ce/hive.dart';
import 'package:notes/hive_registrar.g.dart';
import 'package:path_provider/path_provider.dart';
import 'package:notes/features/notes/domain/entities/note.dart';

/// A service class that handles Hive database initialization and provides access
/// to note storage functionality.
///
/// This service initializes Hive database, registers required adapters, and sets up
/// the box collection for storing notes. It provides static access to the notes box
/// which can be used throughout the application for note persistence operations.
class HiveService {
  /// The name of the box used to store notes.
  static const String notesBoxName = 'notes';

  /// The box collection that contains all boxes used in the application.
  static late final BoxCollection collection;

  /// The box specifically used for storing [Note] entities.
  static late final CollectionBox<Note> notesBox;
  
  /// Initializes the Hive database service.
  ///
  /// This method must be called before any Hive operations can be performed.
  /// It performs the following initialization steps:
  /// 1. Gets the application documents directory
  /// 2. Initializes Hive with the directory path
  /// 3. Registers all required Hive adapters
  /// 4. Opens the box collection
  /// 5. Opens the notes box
  ///
  /// Throws a [PathProviderException] if unable to get application documents directory.
  /// Throws a [HiveError] if box collection or box operations fail.
  static Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
     
    Hive
      ..init(directory.path)
      ..registerAdapters();
       
    collection = await BoxCollection.open(
      'NotesDatabase',
      {notesBoxName},
      path: directory.path,
    );
     
    notesBox = await collection.openBox<Note>(notesBoxName);
  }
} 
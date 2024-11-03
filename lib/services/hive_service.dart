import 'package:hive_ce/hive.dart';
import 'package:notes/hive_registrar.g.dart';
import 'package:path_provider/path_provider.dart';
import 'package:notes/features/notes/domain/entities/note.dart'; 

class HiveService {
  static const String notesBoxName = 'notes';
  static late final BoxCollection collection;
  static late final CollectionBox<Note> notesBox;
  
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
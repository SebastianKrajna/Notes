import 'package:hive_ce/hive.dart';
import 'package:notes/features/notes/domain/entities/note.dart';

extension HiveRegistrar on HiveInterface {
  void registerAdapters() {
    registerAdapter(NoteAdapter());
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'generated/note.freezed.dart';
part 'generated/note.g.dart';

@freezed
@HiveType(typeId: 0)
class Note with _$Note {
  const factory Note({
    @HiveField(0) required String id,
    @HiveField(1) required String content,
    @HiveField(2) required DateTime creationDate,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
} 
// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'pl';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_note": MessageLookupByLibrary.simpleMessage("Dodaj notatkę"),
        "add_note_hint":
            MessageLookupByLibrary.simpleMessage("Wpisz treść notatki..."),
        "add_your_first_note": MessageLookupByLibrary.simpleMessage(
            "Dodaj swoją pierwszą notatkę"),
        "an_error_occurred_while_loading_notes":
            MessageLookupByLibrary.simpleMessage(
                "Nie udało się załadować notatek"),
        "an_error_occurred_while_saving_note":
            MessageLookupByLibrary.simpleMessage(
                "Nie udało się zapisać notatki"),
        "an_unknown_error_occurred":
            MessageLookupByLibrary.simpleMessage("Wystąpił nieznany błąd"),
        "appName": MessageLookupByLibrary.simpleMessage("Notatki"),
        "no_notes": MessageLookupByLibrary.simpleMessage("Brak notatek"),
        "note_added_successfully":
            MessageLookupByLibrary.simpleMessage("Notatka dodana pomyślnie"),
        "note_cannot_be_empty":
            MessageLookupByLibrary.simpleMessage("Notatka nie może być pusta"),
        "please_ensure_the_date_is_valid": MessageLookupByLibrary.simpleMessage(
            "Proszę upewnić się, że data jest prawidłowa"),
        "save": MessageLookupByLibrary.simpleMessage("Zapisz"),
        "this_field_is_required":
            MessageLookupByLibrary.simpleMessage("To pole jest wymagane"),
        "try_again": MessageLookupByLibrary.simpleMessage("Spróbuj ponownie")
      };
}

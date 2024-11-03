// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "add_note": MessageLookupByLibrary.simpleMessage("Add note"),
        "add_note_hint":
            MessageLookupByLibrary.simpleMessage("Enter the note content..."),
        "add_your_first_note":
            MessageLookupByLibrary.simpleMessage("Add your first note"),
        "an_error_occurred_while_loading_notes":
            MessageLookupByLibrary.simpleMessage(
                "An error occurred while loading notes"),
        "an_error_occurred_while_saving_note":
            MessageLookupByLibrary.simpleMessage(
                "An error occurred while saving the note"),
        "an_unknown_error_occurred":
            MessageLookupByLibrary.simpleMessage("An unknown error occurred"),
        "appName": MessageLookupByLibrary.simpleMessage("Notes"),
        "no_notes": MessageLookupByLibrary.simpleMessage("No notes"),
        "note_added_successfully":
            MessageLookupByLibrary.simpleMessage("Note added successfully"),
        "note_cannot_be_empty":
            MessageLookupByLibrary.simpleMessage("Note cannot be empty"),
        "please_ensure_the_date_is_valid": MessageLookupByLibrary.simpleMessage(
            "Please ensure the date is valid"),
        "random_failure_message":
            MessageLookupByLibrary.simpleMessage("Random failure message"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "this_field_is_required":
            MessageLookupByLibrary.simpleMessage("This field is required"),
        "try_again": MessageLookupByLibrary.simpleMessage("Try again")
      };
}

// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppText {
  AppText();

  static AppText? _current;

  static AppText get current {
    assert(_current != null,
        'No instance of AppText was loaded. Try to initialize the AppText delegate before accessing AppText.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppText> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppText();
      AppText._current = instance;

      return instance;
    });
  }

  static AppText of(BuildContext context) {
    final instance = AppText.maybeOf(context);
    assert(instance != null,
        'No instance of AppText present in the widget tree. Did you add AppText.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppText? maybeOf(BuildContext context) {
    return Localizations.of<AppText>(context, AppText);
  }

  /// `Notes`
  String get appName {
    return Intl.message(
      'Notes',
      name: 'appName',
      desc: 'The name of the application',
      args: [],
    );
  }

  /// `An unknown error occurred`
  String get an_unknown_error_occurred {
    return Intl.message(
      'An unknown error occurred',
      name: 'an_unknown_error_occurred',
      desc: 'The text of the error message when an unknown error occurs',
      args: [],
    );
  }

  /// `Try again`
  String get try_again {
    return Intl.message(
      'Try again',
      name: 'try_again',
      desc: 'The text of the button to try again',
      args: [],
    );
  }

  /// `This field is required`
  String get this_field_is_required {
    return Intl.message(
      'This field is required',
      name: 'this_field_is_required',
      desc: 'The text of the error message when a required field is empty',
      args: [],
    );
  }

  /// `Please ensure the date is valid`
  String get please_ensure_the_date_is_valid {
    return Intl.message(
      'Please ensure the date is valid',
      name: 'please_ensure_the_date_is_valid',
      desc: 'The text of the error message when the date is invalid',
      args: [],
    );
  }

  /// `An error occurred while loading notes`
  String get an_error_occurred_while_loading_notes {
    return Intl.message(
      'An error occurred while loading notes',
      name: 'an_error_occurred_while_loading_notes',
      desc:
          'The text of the error message when an error occurred while loading notes',
      args: [],
    );
  }

  /// `Add note`
  String get add_note {
    return Intl.message(
      'Add note',
      name: 'add_note',
      desc: 'The text of the button to add a new note',
      args: [],
    );
  }

  /// `No notes`
  String get no_notes {
    return Intl.message(
      'No notes',
      name: 'no_notes',
      desc: 'The text of the message when there are no notes',
      args: [],
    );
  }

  /// `Add your first note`
  String get add_your_first_note {
    return Intl.message(
      'Add your first note',
      name: 'add_your_first_note',
      desc: 'The text of the message when there are no notes',
      args: [],
    );
  }

  /// `Note added successfully`
  String get note_added_successfully {
    return Intl.message(
      'Note added successfully',
      name: 'note_added_successfully',
      desc: 'The text of the message when the note is added successfully',
      args: [],
    );
  }

  /// `Enter the note content...`
  String get add_note_hint {
    return Intl.message(
      'Enter the note content...',
      name: 'add_note_hint',
      desc: 'The text of the hint in the add note page',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: 'The text of the button to save the note',
      args: [],
    );
  }

  /// `Note cannot be empty`
  String get note_cannot_be_empty {
    return Intl.message(
      'Note cannot be empty',
      name: 'note_cannot_be_empty',
      desc: 'The text of the error message when the note is empty',
      args: [],
    );
  }

  /// `An error occurred while saving the note`
  String get an_error_occurred_while_saving_note {
    return Intl.message(
      'An error occurred while saving the note',
      name: 'an_error_occurred_while_saving_note',
      desc:
          'The text of the error message when an error occurred while saving the note',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppText> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pl'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppText> load(Locale locale) => AppText.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

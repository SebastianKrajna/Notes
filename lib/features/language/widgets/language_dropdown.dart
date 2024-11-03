import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/core/localizations/generated/l10n.dart';
import 'package:notes/features/language/cubit/language_cubit.dart';

extension LocaleExtension on Locale {
  String get languageName {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'pl':
        return 'Polski';
      default:
        return languageCode;
    }
  }
}

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, currentLocale) {
        return SizedBox(
          width: 120,
          child: DropdownButtonFormField<Locale>(
            value: currentLocale,
            icon: const Icon(Icons.language),
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 8),
            ),
            onChanged: (Locale? newLocale) {
              if (newLocale != null) {
                context.read<LanguageCubit>().changeLanguage(newLocale);
              }
            },
            items: AppText.delegate.supportedLocales
                .map<DropdownMenuItem<Locale>>((Locale locale) {
              return DropdownMenuItem<Locale>(
                key: Key(locale.languageCode),
                value: locale,
                child: Text(
                  locale.languageName,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}

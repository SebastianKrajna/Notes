import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:notes/core/localizations/generated/l10n.dart';
import 'package:notes/features/app/route/app_go_router.dart';
import 'package:notes/features/language/cubit/language_cubit.dart';
import 'package:notes/features/notes/data/repositories/note_repository_impl.dart';
import 'package:notes/features/notes/domain/repositories/note_repository.dart';
import 'package:notes/features/notes/presentation/add_note/bloc/add_note_bloc.dart';
import 'package:notes/features/notes/presentation/notes_list/bloc/notes_list_bloc.dart';  
import 'package:notes/services/hive_service.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final GoRouter _router = AppGoRouter().router();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        // Repositories
        RepositoryProvider<NoteRepository>(
          create: (context) => NoteRepositoryImpl(HiveService.notesBox),
        ),

        // Services
        // RepositoryProvider.value(value: _authenticationService),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => NotesListBloc(
              noteRepository: context.read<NoteRepository>(),
            )..add(const NotesListEvent.loadRequested()),
          ),
          BlocProvider(
            create: (context) => AddNoteBloc(
              noteRepository: context.read<NoteRepository>(),
            ),
          ),
          // TODO: ThemeCubit
          // BlocProvider.value(value: ThemeCubit()),
          BlocProvider(
            create: (context) => LanguageCubit(),
          ),
        ],
        child: BlocBuilder<LanguageCubit, Locale?>(
          builder: (context, language) {
            return GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routeInformationProvider: _router.routeInformationProvider,
                routerDelegate: _router.routerDelegate,
                routeInformationParser: _router.routeInformationParser,
                localizationsDelegates: const [
                  AppText.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                // themeMode: themeMode, // TODO: Use theme mode
                // theme: AppTheme.lightTheme(context), // TODO: Use light theme
                // darkTheme: AppTheme.darkTheme(context), // TODO: Use dark theme
                supportedLocales: AppText.delegate.supportedLocales,
                locale: language,
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:notes/features/app/route/app_page.dart';
import 'package:notes/features/error/error_page.dart';
import 'package:notes/features/notes/presentation/add_note/views/add_note_page.dart';
import 'package:notes/features/notes/presentation/notes_list/views/notes_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class AppGoRouter {
  AppGoRouter();

  CustomTransitionPage<void> buildFadeTransitionPage(Widget child) {
    return CustomTransitionPage<void>(
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: child,
    );
  }

  GoRouter router() => GoRouter(
        navigatorKey: _rootNavigatorKey,
        initialLocation: AppPage.notes.path,
        debugLogDiagnostics: true,
        errorBuilder: (BuildContext context, GoRouterState state) =>
            const ErrorPage(),
        routes: [
          GoRoute(
            path: AppPage.notes.path,
            name: AppPage.notes.fullPath,
            pageBuilder: (context, state) {
              return buildFadeTransitionPage(const NotesPage());
            },
            routes: [
              GoRoute(
                path: AppPage.addNote.path,
                name: AppPage.addNote.fullPath,
                pageBuilder: (context, state) {
                  return buildFadeTransitionPage(const AddNotePage());
                },
              ),
            ],
          ),
        ],
      );
}

import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; 
import 'package:notes/config.dart'; 
import 'package:notes/features/error/error_page.dart';
import 'package:notes/services/hive_service.dart';

Future<void> bootstrap(Flavor flavor, Widget Function() builder) async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await HiveService.init();

      ErrorWidget.builder = (errorDetails) {
        return const ErrorPage();
      };

      FlutterError.onError = (FlutterErrorDetails details) async {
        final dynamic exception = details.exception;
        final StackTrace? stackTrace = details.stack;
        if (kDebugMode) {
          // In development mode simply print to console.
          FlutterError.dumpErrorToConsole(details);
        } else {
          // LogService.instance.recordFlutterFatalError(details);
          // In production mode report to the application zone
          Zone.current.handleUncaughtError(exception, stackTrace!);
        }
      };

      // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
      PlatformDispatcher.instance.onError = (error, stack) {
        // LogService.instance.logError(error, stack, fatal: true);
        return true;
      };

      runApp(builder());
    },
    (error, stackTrace) async {
      if (kDebugMode) {
        // In development mode simply print to console.
        // LogService.instance.logError('runZonedGuarded', error, stackTrace);
      } else {
        // LogService.instance.logError('runZonedGuarded', error, stackTrace);
        exit(1);
      }
    },
  );
}

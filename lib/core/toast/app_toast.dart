import 'package:toastification/toastification.dart';
import 'package:flutter/material.dart';

extension AppToastExtension on BuildContext {
  void showSuccessToast({
    String title = 'Success',
    required String description,
  }) =>
      AppToast.instance.showSuccessToast(
        context: this,
        title: title,
        description: description,
      );

  void showInfoToast({
    String title = 'Info',
    required String description,
  }) =>
      AppToast.instance.showInfoToast(
        context: this,
        title: title,
        description: description,
      );

  void showWarningToast({
    String title = 'Warning',
    required String description,
  }) =>
      AppToast.instance.showWarningToast(
        context: this,
        title: title,
        description: description,
      );

  void showErrorToast({
    String title = 'Error',
    required String description,
  }) =>
      AppToast.instance.showErrorToast(
        context: this,
        title: title,
        description: description,
      );
}

class AppToast {
  static AppToast? _instance;

  /// Factory constructor for creating or accessing the singleton instance.
  factory AppToast() {
    _instance ??= AppToast._privateConstructor();
    return _instance!;
  }

  /// Provides access to the singleton instance.
  static AppToast get instance => _instance ??= AppToast._privateConstructor();

  AppToast._privateConstructor();

  void showSuccessToast({
    required BuildContext context,
    required String title,
    required String description,
  }) {
    _showCustomToast(
      context: context,
      type: ToastificationType.success,
      title: title,
      description: description,
    );
  }

  void showInfoToast({
    required BuildContext context,
    required String title,
    required String description,
  }) {
    _showCustomToast(
      context: context,
      type: ToastificationType.info,
      title: title,
      description: description,
    );
  }

  void showWarningToast({
    required BuildContext context,
    required String title,
    required String description,
  }) {
    _showCustomToast(
      context: context,
      type: ToastificationType.warning,
      title: title,
      description: description,
    );
  }

  void showErrorToast({
    required BuildContext context,
    required String title,
    required String description,
  }) {
    _showCustomToast(
      context: context,
      type: ToastificationType.error,
      title: title,
      description: description,
    );
  }

  void _showCustomToast({
    required BuildContext context,
    required ToastificationType type,
    required String title,
    required String description,
  }) {
    toastification.show(
      context: context, // optional if you use ToastificationWrapper
      autoCloseDuration: const Duration(seconds: 5),
      alignment: Alignment.topCenter,
      animationDuration: const Duration(milliseconds: 250),
      progressBarTheme: ProgressIndicatorThemeData(
        color: Colors.black,
        linearMinHeight: 1,
        linearTrackColor: Theme.of(context).colorScheme.surfaceContainer,
      ),
      type: type,
      // title: Text(title),
      description: Text(description),
      style: ToastificationStyle.flatColored,
      margin: const EdgeInsets.fromLTRB(16, 4, 16, 4),
      callbacks: ToastificationCallbacks(
        onCloseButtonTap: (holder) => toastification.dismiss(holder),
      ),
    );
  }
}

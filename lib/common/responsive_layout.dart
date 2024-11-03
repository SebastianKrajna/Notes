import 'package:flutter/material.dart';

/// A widget that provides a responsive layout for mobile, tablet, and desktop devices.
///
/// This widget uses the [LayoutBuilder] to determine the available width and displays
/// the appropriate widget based on the specified breakpoints.
class ResponsiveLayout extends StatelessWidget {
  /// Creates a [ResponsiveLayout] widget.
  ///
  /// The [mobile], [tablet], and [desktop] parameters must not be null.
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    this.mobileBreakpoint = _defaultMobileBreakpoint,
    this.tabletBreakpoint = _defaultTabletBreakpoint,
  });

  /// The widget to display on mobile devices.
  final Widget mobile;

  /// The widget to display on tablet devices.
  final Widget tablet;

  /// The widget to display on desktop devices.
  final Widget desktop;

  /// The breakpoint value for mobile devices (width < 768 by default).
  final int mobileBreakpoint;

  /// The breakpoint value for tablet devices (768 <= width < 1200 by default).
  final int tabletBreakpoint;

  /// Default breakpoint value for mobile devices.
  static const int _defaultMobileBreakpoint = 768;

  /// Default breakpoint value for tablet devices.
  static const int _defaultTabletBreakpoint = 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileBreakpoint) {
          return mobile;
        } else if (constraints.maxWidth < tabletBreakpoint) {
          return tablet;
        } else {
          return desktop;
        }
      },
    );
  }
}

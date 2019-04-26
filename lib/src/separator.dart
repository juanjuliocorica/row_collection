import 'package:flutter/material.dart';

/// SEPARATOR WIDGET
class Separator extends StatelessWidget {
  final Widget body;

  const Separator(this.body);

  @override
  Widget build(BuildContext context) {
    return body;
  }

  /// Normal spacer
  factory Separator.spacer({double height = 12, double width = 0}) {
    return Separator(SizedBox(height: height, width: width));
  }

  /// Card-only spacer
  factory Separator.cardSpacer() {
    return Separator(SizedBox(height: 8));
  }

  /// It's a simple divider, you know
  factory Separator.divider({double height = 24, double indent = 0}) {
    return Separator(Divider(height: height, indent: indent));
  }

  /// Divider with height 0
  factory Separator.thinDivider({double indent = 0}) {
    return Separator(Divider(height: 0, indent: indent));
  }

  /// Empty widget
  factory Separator.none() {
    return Separator(SizedBox());
  }
}
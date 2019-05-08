import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

/// ROW LAYOUR WIDGET
/// This widget helps developers create a layout, full of widgets,
/// with a [Separator.spacer] widget. You can stablish other parameters.
class RowLayout extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;
  final double space;

  const RowLayout({
    Key key,
    this.children,
    this.padding = EdgeInsets.zero,
    this.space = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: _intercalateSpacer(children),
      ),
    );
  }

  /// Named constructor meant to be used inside [Card] widgets.
  /// It automatically applies a padding of [12] for all edges.
  factory RowLayout.card({List<Widget> children, double space = 12}) {
    return RowLayout(
      children: children,
      padding: EdgeInsets.all(18),
      space: space,
    );
  }

  /// Named constructor meant to be used inside a [Scaffold] widget.
  /// It automatically applies a padding of [16] for all edges.
  factory RowLayout.body({List<Widget> children, double space = 12}) {
    return RowLayout(
      children: children,
      padding: EdgeInsets.all(16),
      space: space,
    );
  }

  /// This method receives a [list] object, and intercalate its
  /// content with [Separator.spacer] widgets, using a 'for' loop.
  List<Widget> _intercalateSpacer(List<Widget> list) {
    return [
      for (int i = 0; i < list.length * 2 - 1; ++i)
        if (i.isEven) list[i ~/ 2] else Separator.spacer(space: space)
    ];
  }
}
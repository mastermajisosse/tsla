import 'package:flutter/material.dart';

import '../../utils/style.dart';

class ChipShape extends StatelessWidget {
  final Color color;
  final Widget child;
  const ChipShape({Key key, this.color, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        decoration: Style.chipDecoration.copyWith(color: color),
        child: child);
  }
}

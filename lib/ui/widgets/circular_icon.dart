import 'package:flutter/material.dart';

import '../utils/style.dart';

class CircularIcon extends StatelessWidget {
  final Widget child;
  const CircularIcon({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Style.darkColor),
      child: child,
    );
  }
}

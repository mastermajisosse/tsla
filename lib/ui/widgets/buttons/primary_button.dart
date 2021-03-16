import 'package:flutter/material.dart';

import '../../utils/style.dart';

class PrimaryButton extends StatelessWidget {
  final bool light;
  final Widget child;
  final Function onTap;
  const PrimaryButton({
    Key key,
    @required this.child,
    @required this.onTap,
    this.light = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 17),
          decoration: Style.buttonDecoration
              .copyWith(color: light ? Style.primaryColor : Colors.white),
          child: child),
    );
  }
}

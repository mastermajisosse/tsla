import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/size_config.dart';
import '../../utils/style.dart';

class LogoWithText extends StatelessWidget {
  final String text;
  final bool light;
  const LogoWithText({
    Key key,
    this.text = '',
    this.light = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Column(
      children: <Widget>[
        SvgPicture.asset(
          'assets/logo_only.svg',
          width: SizeConfig.blockSizeHorizontal * 22,
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical,
        ),
        text != ''
            ? Text(
                text,
                style: Style.logoTextStyle
                    .copyWith(color: light ? Style.primaryColor : Colors.white),
              )
            : Container(),
      ],
    );
  }
}

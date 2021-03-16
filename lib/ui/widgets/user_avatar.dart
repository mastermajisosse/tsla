import 'package:flutter/material.dart';

import '../utils/util.dart';

class UserAvatar extends StatelessWidget {
  final String imageUrl;
  const UserAvatar({
    Key key,
    @required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.27,
      height: SizeConfig.screenWidth * 0.27,
      decoration: BoxDecoration(
        color: Style.darkColor,
        shape: BoxShape.circle,
        image: DecorationImage(
            image: NetworkImage(
                imageUrl != null ? '$imageUrl' : AppConfig.defaultUserImage),
            fit: BoxFit.cover),
      ),
    );
  }
}

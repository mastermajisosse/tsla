import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static BuildContext context;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double paddingHorizontal;
  static double paddingVertical;

  void init(BuildContext context) {
    context = context;
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    paddingHorizontal = blockSizeHorizontal * 3.4;
    paddingVertical = blockSizeVertical * 2;
  }
}

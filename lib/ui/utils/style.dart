import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Style {
  // status Colors
  static final Color goldColor = Color(0xFFf5b900);
  static final Color redColor = Color(0xFFf06060);
  static final Color greenColor = Color(0xFF39CC6C);
  static final Color grayColor = Color(0xFFF7F7F7);

  static final Color primaryColor = Color(0xFF0005D8);
  static final Color doneColor = greenColor;
  static final Color darkColor = Color(0xFF252525);
  static final Color cardColor = Color(0xFFFFFFFF);
  static final Color labelColor = Color(0xFF83b23c);
  static final Color placeHolderColor = grayColor;
  // term
  static final Color yellowColor = Color(0xFFF6F1DB).withOpacity(.7);
  static final Color bluewColor = Color(0xFFEFF1F6);
  static final Color grrenwColor = Color(0xFFECF8F5);

  // text style

  static String fontf = "ProximaNova";

  static TextStyle titleTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(134),
    fontWeight: FontWeight.w900,
  );
  static TextStyle dateTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black.withOpacity(.5),
    fontSize: ScreenUtil().setSp(35),
    fontWeight: FontWeight.normal,
  );
  static TextStyle tagblackTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(55),
    fontWeight: FontWeight.w600,
  );
  static TextStyle tagwhiteTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.white,
    fontSize: ScreenUtil().setSp(55),
    fontWeight: FontWeight.w600,
  );
  static TextStyle nameincTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(104),
    fontWeight: FontWeight.w900,
  );
  static TextStyle normalTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(39),
    fontWeight: FontWeight.w800,
  );
  static TextStyle percentTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(77),
    fontWeight: FontWeight.w800,
  );

  static TextStyle logoTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.white,
    fontSize: ScreenUtil().setSp(36),
    fontWeight: FontWeight.w700,
  );

  static TextStyle labelTextStyle = TextStyle(
    color: Style.labelColor,
    fontFamily: 'Montserrat',
    fontSize: ScreenUtil().setSp(28),
  );

  static TextStyle placeholderTextStyle =
      TextStyle(color: labelColor, fontFamily: 'Montserrat', fontSize: 14);
  static TextStyle subTitleTextStyle =
      TextStyle(fontSize: 12, color: Style.labelColor);

  static TextStyle defaultTextStyle =
      TextStyle(color: darkColor, fontFamily: 'Montserrat', fontSize: 14);
  static TextStyle boldTitleTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 31);
  static TextStyle largeTitleTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20);
  static TextStyle regularTitleTextStyle =
      TextStyle(color: darkColor, fontWeight: FontWeight.w500, fontSize: 14);

  //input decoration

  static inputDecoration(
      {String hint, Widget icon = null, bool padding = false}) {
    return InputDecoration(
      // counterText: '',
      hintText: '$hint',

      hintStyle: placeholderTextStyle,
      suffixIcon: icon ?? icon,
      fillColor: labelColor,
      contentPadding: padding
          ? EdgeInsets.symmetric(horizontal: 15, vertical: 12)
          : EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(color: Style.placeHolderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(color: Style.labelColor),
      ),
    );
  }

  static InputDecoration newInputDecoration = InputDecoration(
    labelStyle: Style.subTitleTextStyle.copyWith(fontSize: 18),
    hintStyle: placeholderTextStyle,
    hintText: 'hint',
    fillColor: labelColor,
    // alignLabelWithHint: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(26),
      borderSide: BorderSide(color: Style.placeHolderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(26),
      borderSide: BorderSide(color: Style.labelColor),
    ),
  );

  static InputDecoration searchInputDecoration = InputDecoration(
    prefixIcon: Icon(
      Icons.search,
      color: Style.placeHolderColor,
      size: 19,
    ),
    hintText: 'Rechercher',
    hintStyle: Style.placeholderTextStyle,
    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Style.placeHolderColor),
      borderRadius: const BorderRadius.all(
        const Radius.circular(65.0),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Style.labelColor),
      borderRadius: const BorderRadius.all(
        const Radius.circular(65.0),
      ),
    ),
  );

  // box decoration

  static BoxDecoration shorttermDecoration(term) => BoxDecoration(
        color: term == "short-term"
            ? yellowColor
            : term == "mid-term"
                ? grrenwColor
                : bluewColor,
        borderRadius: BorderRadius.circular(30),
      );
  // static BoxDecoration midtermDecoration = BoxDecoration(
  //   color: grrenwColor,
  //   borderRadius: BorderRadius.circular(30),
  // );
  // static BoxDecoration longtermDecoration = BoxDecoration(
  //   color: bluewColor,
  //   borderRadius: BorderRadius.circular(30),
  // );
  static BoxDecoration buttonDecoration = BoxDecoration(
      color: Style.primaryColor,
      borderRadius: BorderRadius.circular(32),
      border: Border.all(color: primaryColor, width: 2));
  static BoxDecoration cardDecoration = BoxDecoration(
    color: cardColor,
    borderRadius: BorderRadius.circular(8),
  );
  static BoxDecoration outlineCardDecoration = BoxDecoration(
      color: darkColor,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: cardColor, width: 2));
  static BoxDecoration homeCardDecoration = BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey, width: 1));
  static BoxDecoration categoryCardDecoration = BoxDecoration(
      color: darkColor,
      border: Border(
          top: BorderSide(color: cardColor),
          bottom: BorderSide(color: cardColor)));

  static BoxDecoration chipDecoration = BoxDecoration(
    color: cardColor,
    borderRadius: BorderRadius.circular(32),
  );

  // themes
  static ThemeData datePicker = ThemeData(
    primarySwatch: MaterialColor(
      0xFF252525,
      <int, Color>{
        50: Color(0xFF252525),
        100: Color(0xFF252525),
        200: Color(0xFF252525),
        300: Color(0xFF252525),
        400: Color(0xFF252525),
        500: Color(0xFF252525),
        600: Color(0xFF252525),
        700: Color(0xFF252525),
        800: Color(0xFF252525),
        900: Color(0xFF252525),
      },
    ),
    primaryColor: Style.darkColor,
    accentColor: Style.darkColor,
    dialogBackgroundColor: Style.primaryColor,
  );
  static ThemeData timePicker = ThemeData(
    primarySwatch: MaterialColor(
      0xFF252525,
      <int, Color>{
        50: Color(0xFF252525),
        100: Color(0xFF252525),
        200: Color(0xFF252525),
        300: Color(0xFF252525),
        400: Color(0xFF252525),
        500: Color(0xFF252525),
        600: Color(0xFF252525),
        700: Color(0xFF252525),
        800: Color(0xFF252525),
        900: Color(0xFF252525),
      },
    ),
    primaryColor: Style.darkColor,
    accentColor: Style.primaryColor,
    dialogBackgroundColor: Style.primaryColor,
  );
}

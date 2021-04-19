import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Style {
  // status Colors
  static final Color goldColor = Color(0xFFf5b900);
  static final Color redColor = Color(0xFFf06060);
  static final Color greenColor = Color(0xFF39CC6C);
  static final Color grayColor = Color(0xFFF7F7F7);
  static final Color greyColor = Color(0xFFF5F5F5);

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

  static final Color sellcolo = Color(0xFFFF7091);
  static final Color holdcolo = Color(0xFF4CCE98);
  // text style

  static String fontf = "ProximaNova";

  static TextStyle titleTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(134),
    fontWeight: FontWeight.w700,
    height: 1.0,
  );
  static TextStyle titleTextStyleguide = TextStyle(
    fontFamily: fontf,
    color: primaryColor,
    fontSize: ScreenUtil().setSp(90),
    fontWeight: FontWeight.w700,
    height: 1.3,
  );
  static TextStyle dateTextStyle = TextStyle(
    fontFamily: Style.fontf,
    color: Color(0xFF6E6E6E),
    fontSize: ScreenUtil().setSp(38),
    fontWeight: FontWeight.normal,
  );
  static TextStyle dateTextStyle2 = TextStyle(
    fontFamily: fontf,
    color: Color(0xFF6E6E6E),
    fontSize: ScreenUtil().setSp(22),
    fontWeight: FontWeight.normal,
  );
  static TextStyle tagblackTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(45),
    fontWeight: FontWeight.w700,
  );
  static TextStyle marketTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(48),
    fontWeight: FontWeight.w600,
  );
  static TextStyle tagwhiteTextStyle = TextStyle(
    fontFamily: Style.fontf,
    color: Colors.white,
    fontSize: ScreenUtil().setSp(40),
    fontWeight: FontWeight.w600,
  );
  static TextStyle butwhiteTextStyle = TextStyle(
    fontFamily: Style.fontf,
    color: Colors.white,
    fontSize: ScreenUtil().setSp(52),
    fontWeight: FontWeight.bold,
  );
  static TextStyle nameincTextStyle = TextStyle(
    fontFamily: Style.fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(85),
    fontWeight: FontWeight.bold,
  );
  static TextStyle namenormalTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(55),
    fontWeight: FontWeight.w500,
  );
  static TextStyle subtitlTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(60),
    fontWeight: FontWeight.w500,
  );
  static TextStyle normalTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(39),
    fontWeight: FontWeight.w800,
  );
  static TextStyle normalslimTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(48),
    fontWeight: FontWeight.w100,
  );
  static TextStyle normalwhiteTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.white,
    fontSize: ScreenUtil().setSp(45),
    fontWeight: FontWeight.w800,
  );
  static TextStyle percentTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: ScreenUtil().setSp(77),
    fontWeight: FontWeight.w800,
  );
  static TextStyle addnewTextStyle = TextStyle(
    fontFamily: fontf,
    color: Colors.black,
    fontSize: 38,
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
  static TextStyle smallslimTextStyle = TextStyle(
    color: Colors.black87,
    fontFamily: fontf,
    fontSize: ScreenUtil().setSp(36),
    fontWeight: FontWeight.w100,
  );
  static TextStyle smallboldTextStyle = TextStyle(
    color: Colors.black87,
    fontFamily: fontf,
    fontSize: ScreenUtil().setSp(28),
    fontWeight: FontWeight.w800,
  );

  static TextStyle placeholderTextStyle =
      TextStyle(color: Colors.black45, fontFamily: fontf, fontSize: 22);
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

  static inputDecoration2(
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
        borderSide: BorderSide(color: Colors.transparent),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(color: Colors.transparent),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        // borderSide: BorderSide(),
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
        color: term == "Short-term"
            ? yellowColor
            : term == "Mid-term"
                ? grrenwColor
                : bluewColor,
        borderRadius: BorderRadius.circular(5),
      );
  static BoxDecoration holdsellDecoration(holds) => BoxDecoration(
        color: holds == "Hold"
            ? primaryColor.withOpacity(.3)
            : holds == "Sell"
                ? primaryColor
                : primaryColor.withOpacity(.66),
        borderRadius: BorderRadius.circular(6),
      );
  static BoxDecoration buttonDecoration = BoxDecoration(
      color: Style.primaryColor,
      borderRadius: BorderRadius.circular(32),
      border: Border.all(color: primaryColor, width: 2));
  static BoxDecoration buttonblackDecoration = BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(32),
  );
  static BoxDecoration cardDecoration = BoxDecoration(
    color: cardColor,
    borderRadius: BorderRadius.circular(8),
  );
  static BoxDecoration roundblackDecoration = BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(50),
  );
  static BoxDecoration roundprimDecoration = BoxDecoration(
    color: primaryColor,
    borderRadius: BorderRadius.circular(50),
  );
  static BoxDecoration outlineCardDecoration = BoxDecoration(
      color: darkColor,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: cardColor, width: 2));
  static BoxDecoration homeCardDecoration(added) => BoxDecoration(
      color: added == true ? Color(0xFFF2F2F2) : Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
          color:
              added == true ? Colors.transparent : Colors.black.withOpacity(.2),
          width: 1));
  static BoxDecoration portfolioCardDecoration(added) => BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
      );
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

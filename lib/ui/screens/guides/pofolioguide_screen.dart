import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/data/models/SymbolsData.dart';
import 'package:tsla/ui/screens/guides/onboaedingtrading.dart';
import 'package:tsla/ui/utils/style.dart';
import 'package:tsla/ui/widgets/mycardshome.dart';

class GuidePofolioScreen extends StatefulWidget {
  static const routeName = 'GuidePofolioScreen';
  @override
  GuidePofolionState createState() => GuidePofolionState();
}

class GuidePofolionState extends State<GuidePofolioScreen> {
  static double khkh = ScreenUtil().setWidth(55);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: ClampingScrollPhysics(),
        primary: true,
        children: [
          Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().setHeight(1100),
            child: Stack(
              children: [
                Positioned(
                  top: -100,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 600,
                    child: SvgPicture.asset(
                      "assets/pofolioscreen.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(khkh * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Guides",
                        style: Style.titleTextStyle,
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: Style.buttonblackDecoration,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_outlined,
                                color: Colors.white,
                                size: 22,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: ScreenUtil().setWidth(60)),
                            child: Text(
                              "Portfolio Trends Guide",
                              style: Style.subtitlTextStyle,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(100)),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: ScreenUtil().setWidth(130)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Data about each stock that you’ve\nadded to Your Portfolio will be updated\nevery Monday, early morning EST.\n\nYou can keep up to 30 stocks in Your\nPortfolio at the same time. Turn on\nnotifications to be notified when your \nportfolio gets updated.',
                  style: Style.normalslimTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(50),
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: ScreenUtil().setHeight(100)),
                SvgPicture.string(
                  '<svg viewBox="28.5 607.0 318.0 1.0" ><path transform="translate(28.5, 607.0)" d="M 0 0 L 318 0" fill="none" stroke="#000000" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>',
                  allowDrawingOutsideViewBox: true,
                ),
                SizedBox(height: ScreenUtil().setHeight(100)),
                Text(
                  'Adding a stock to portfolio',
                  style: TextStyle(
                    fontFamily: Style.fontf,
                    fontSize: 25,
                    color: const Color(0xff0005d9),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: ScreenUtil().setHeight(50)),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "Swipe left the stock card in Daily Picks\nscreen and tap the   ",
                        style: TextStyle(
                          fontFamily: Style.fontf,
                          fontSize: 17,
                          color: const Color(0xff000000),
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          decoration: Style.roundblackDecoration,
                          height: ScreenUtil().setWidth(70),
                          width: ScreenUtil().setWidth(70),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: ScreenUtil().setSp(50),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "   button to add\nthis stock to your portfolio.",
                        style: TextStyle(
                          fontFamily: Style.fontf,
                          fontSize: 17,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(50)),
          Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().setHeight(550),
            // color: Colors.amber,
            child: Stack(
              children: [
                Positioned(
                  top: -30,
                  left: -80,
                  right: 35,
                  child: SizedBox(
                    height: ScreenUtil().setHeight(700),
                    child: SvgPicture.asset(
                      "assets/guide/dpick1.svg",
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(100)),
          Padding(
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(130),
              right: ScreenUtil().setWidth(130),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Tap the   ",
                        style: TextStyle(
                          fontFamily: Style.fontf,
                          fontSize: 17,
                          color: const Color(0xff000000),
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: khkh - 10, vertical: 4.0),
                          child: Text(
                            "Edit",
                            style: Style.tagwhiteTextStyle,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "   button in Your Portfolio screen and the   ",
                        style: TextStyle(
                          fontFamily: Style.fontf,
                          fontSize: 17,
                          color: const Color(0xff000000),
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          decoration: Style.roundblackDecoration,
                          height: ScreenUtil().setWidth(70),
                          width: ScreenUtil().setWidth(70),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: ScreenUtil().setSp(50),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "   button to open a search screen.",
                        style: TextStyle(
                          fontFamily: Style.fontf,
                          fontSize: 17,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Search for a stock symbol and tap  ",
                        style: TextStyle(
                          fontFamily: Style.fontf,
                          fontSize: 17,
                          color: const Color(0xff000000),
                        ),
                      ),
                      WidgetSpan(
                        child: Container(
                          decoration: Style.roundblackDecoration,
                          height: ScreenUtil().setWidth(70),
                          width: ScreenUtil().setWidth(70),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: ScreenUtil().setSp(50),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "   button to add a stock to your portfolio.",
                        style: TextStyle(
                          fontFamily: Style.fontf,
                          fontSize: 17,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(500),
            // color: Colors.amber,
            padding: EdgeInsets.all(16),
            child: SvgPicture.asset(
              "assets/guide/dpick2.svg",
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(100)),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: ScreenUtil().setWidth(130)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.string(
                    '<svg viewBox="28.5 607.0 318.0 1.0" ><path transform="translate(28.5, 607.0)" d="M 0 0 L 318 0" fill="none" stroke="#000000" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>',
                    allowDrawingOutsideViewBox: true,
                  ),
                  SizedBox(height: ScreenUtil().setHeight(100)),
                  Text(
                    'Removing a stock from your portfolio',
                    style: TextStyle(
                      fontFamily: Style.fontf,
                      fontSize: 25,
                      color: const Color(0xff0005d9),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: ScreenUtil().setHeight(50)),
                  Padding(
                    padding: EdgeInsets.only(right: ScreenUtil().setWidth(130)),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Tap the   ",
                            style: TextStyle(
                              fontFamily: Style.fontf,
                              fontSize: 17,
                              color: const Color(0xff000000),
                            ),
                          ),
                          WidgetSpan(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: khkh - 10, vertical: 4.0),
                              child: Text(
                                "Edit",
                                style: Style.tagwhiteTextStyle,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                "   button in Your Portfolio screen and swipe left the stock card you’d like to remove and tap the   ",
                            style: TextStyle(
                              fontFamily: Style.fontf,
                              fontSize: 17,
                              color: const Color(0xff000000),
                            ),
                          ),
                          WidgetSpan(
                            child: Container(
                              decoration: Style.roundblackDecoration,
                              height: ScreenUtil().setWidth(70),
                              width: ScreenUtil().setWidth(70),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: ScreenUtil().setSp(50),
                              ),
                            ),
                          ),
                          TextSpan(
                            text: "   button.",
                            style: TextStyle(
                              fontFamily: Style.fontf,
                              fontSize: 17,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
          SizedBox(height: ScreenUtil().setHeight(100)),
          Container(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().setHeight(550),
            // color: Colors.amber,
            child: Stack(
              children: [
                Positioned(
                  top: -50,
                  left: -108,
                  right: 55,
                  child: SizedBox(
                    height: ScreenUtil().setHeight(700),
                    child: SvgPicture.asset(
                      "assets/guide/dpick3.svg",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(130),
                right: ScreenUtil().setWidth(130)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.string(
                  '<svg viewBox="28.5 607.0 318.0 1.0" ><path transform="translate(28.5, 607.0)" d="M 0 0 L 318 0" fill="none" stroke="#000000" stroke-width="0.5" stroke-miterlimit="4" stroke-linecap="round" /></svg>',
                  allowDrawingOutsideViewBox: true,
                ),
                SizedBox(height: ScreenUtil().setHeight(100)),
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(1500),
            width: double.infinity,
            alignment: Alignment.topCenter,
            child: OnBoardingTradingScreen(),
          ),
          SizedBox(height: ScreenUtil().setHeight(100)),
        ],
      ),
    );
  }
}

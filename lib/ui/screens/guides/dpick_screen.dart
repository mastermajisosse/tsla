import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/screens/guides/onboardingdpick_screen.dart';
import 'package:tsla/ui/utils/style.dart';

class GuideDpickScreen extends StatefulWidget {
  static const routeName = 'GuideDpickScreen';
  @override
  GuideDpickScreenState createState() => GuideDpickScreenState();
}

class GuideDpickScreenState extends State<GuideDpickScreen> {
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
            height: ScreenUtil().setHeight(1200),
            child: Stack(
              children: [
                Positioned(
                  top: -190,
                  left: -50,
                  right: -50,
                  child: SizedBox(
                    height: 600,
                    child: SvgPicture.asset(
                      "assets/dpickscreen.svg",
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
                              "Daily Picks Guide",
                              style: Style.subtitlTextStyle,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: khkh),
                //   child: Text(
                //     "Text content to be updated:",
                //     style: Style.normalTextStyle,
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(100)),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(130),
                right: ScreenUtil().setWidth(120)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Every day the AI looks for best entry opportunities and updates picks few hours before the bell. There’s always a few to choose from so you can pick  the one you feel comfortable with. \n\nTurn on notifications to be notified when new picks are generated.',
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
                      "assets/guide/guidetrend1.svg",
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(100)),
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
              ],
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(100)),
          Container(
            height: ScreenUtil().setHeight(1550),
            width: double.infinity,
            alignment: Alignment.topCenter,
            child: OnBoardingDpickScreen(),
          ),
          SizedBox(height: ScreenUtil().setHeight(120)),
        ],
      ),
    );
  }
}

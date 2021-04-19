import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/screens/guides/onboardingbestp_screen.dart';
import 'package:tsla/ui/utils/style.dart';

class GuideTradingScreen extends StatefulWidget {
  static const routeName = 'GuideTradingScreen';
  @override
  GuideTradingScreenState createState() => GuideTradingScreenState();
}

class GuideTradingScreenState extends State<GuideTradingScreen> {
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
                  top: -270,
                  left: -100,
                  right: 0,
                  child: SizedBox(
                    height: 750,
                    child: SvgPicture.asset(
                      "assets/bikescreen.svg",
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
                              "Trading Best Practices",
                              style: Style.subtitlTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(1700),
            width: double.infinity,
            alignment: Alignment.topCenter,
            child: OnboardingbestPractice(),
          ),
        ],
      ),
    );
  }

  PageController controller = PageController();
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/screens/bottom_bar.dart';
import 'package:tsla/ui/screens/guides/dpick_screen.dart';
import 'package:tsla/ui/screens/guides/guidestrading.dart';
import 'package:tsla/ui/screens/guides/pofolioguide_screen.dart';
import 'package:tsla/ui/utils/style.dart';

class ChooseGuideScreen extends StatefulWidget {
  static const routeName = 'ChooseGuideScreen';
  @override
  _ChooseGuideScreenState createState() => _ChooseGuideScreenState();
}

class _ChooseGuideScreenState extends State<ChooseGuideScreen> {
  static double khkh = ScreenUtil().setWidth(55);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        padding: EdgeInsets.symmetric(vertical: khkh),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: khkh),
              child: Text(
                "Guides",
                style: Style.titleTextStyle,
              ),
            ),
            // SvgPicture.asset("assets/incom.svg"),
            SizedBox(height: khkh),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomTabBarr(
                        widgetoutside: GuideTradingScreen(),
                      ),
                    ),
                  );
                },
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: choosecard("Trading Best Practices", "bike"),
              ),
            ),
            SizedBox(height: khkh),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomTabBarr(
                        widgetoutside: GuidePofolioScreen(),
                      ),
                    ),
                  );
                },
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: choosecard("Portfolio Trends Guide", "porfolio"),
              ),
            ),
            SizedBox(height: khkh),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomTabBarr(
                        widgetoutside: GuideDpickScreen(),
                      ),
                    ),
                  );
                },
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: choosecard("Daily Picks Guide", "dpick"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  choosecard(name, ico) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(60)),
      child: Container(
        decoration: Style.homeCardDecoration(true),
        padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: ScreenUtil().setWidth(60)),
                child: Text(
                  name,
                  style: Style.tagblackTextStyle,
                ),
              ),
            ),
            Expanded(child: SvgPicture.asset("assets/$ico.svg")),
          ],
        ),
      ),
    );
  }
}

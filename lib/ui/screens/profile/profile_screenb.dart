import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/data/models/SymbolsData.dart';
import 'package:tsla/ui/screens/auth/login_screen.dart';
import 'package:tsla/ui/screens/bottom_bar.dart';
import 'package:tsla/ui/screens/bottomsheet/bottomsheetops.dart';
import 'package:tsla/ui/screens/profile/profile_screen.dart';
import 'package:tsla/ui/utils/style.dart';
import 'package:tsla/ui/widgets/mycardshome.dart';

class ProfileBScreen extends StatefulWidget {
  static const routeName = 'ProfileBScreen';
  @override
  _ProfileBScreenState createState() => _ProfileBScreenState();
}

class _ProfileBScreenState extends State<ProfileBScreen> {
  static double khkh = ScreenUtil().setWidth(55);
  String carddesc = "Your subscription has expired";
  String carddescbutt = "Resubscribe";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: khkh),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: khkh),
              child: Text(
                "Your Account",
                style: Style.titleTextStyle,
              ),
            ),
            SizedBox(height: khkh),

            Expanded(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(60)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/recrut.svg"),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFF2F2F2),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 26, vertical: 23),
                      child: Column(
                        children: [
                          Text(
                            carddesc,
                            style: Style.namenormalTextStyle.copyWith(
                              fontSize: ScreenUtil().setSp(52),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: khkh),
                          Center(
                            child: InkWell(
                              onTap: () {
                                // Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomTabBarr(
                                            widgetoutside: ProfileScreen(),
                                          )),
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Container(
                                  height: ScreenUtil().setWidth(130),
                                  width: ScreenUtil().setWidth(450),
                                  decoration: Style
                                      .buttonDecoration, // .buttDecotatio(),
                                  alignment: Alignment.center,
                                  child: Text(
                                    carddescbutt,
                                    style: Style.butwhiteTextStyle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: khkh * 3.8),
                    Text(
                      "Disclaimer & Terms of Use",
                      style: Style.namenormalTextStyle.copyWith(
                        fontSize: ScreenUtil().setSp(48),
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: khkh + 30),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, LoginScreen.routeName);
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.0),
                          child: Container(
                            height: ScreenUtil().setWidth(130),
                            width: ScreenUtil().setWidth(380),
                            decoration: Style.buttonblackDecoration,
                            alignment: Alignment.center,
                            child: Text(
                              'Sign out',
                              style: Style.butwhiteTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // SvgPicture.asset("assets/recrut.svg"),
          ],
        ),
      ),
    );
  }
}

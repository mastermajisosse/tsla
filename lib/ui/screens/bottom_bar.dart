import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/screens/guides/chooseguide_screen.dart';
import 'package:tsla/ui/screens/home_screen.dart';
import 'package:tsla/ui/screens/portfolio/portfolio_screen.dart';
import 'package:tsla/ui/screens/profile/profile_screenb.dart';

class BottomTabBarr extends StatefulWidget {
  static const routeName = 'BottomTabBarr';

  Widget widgetoutside;
  BottomTabBarr({this.widgetoutside});

  @override
  _BottomTabBarrState createState() => _BottomTabBarrState();
}

class _BottomTabBarrState extends State<BottomTabBarr> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List _widgetOptions = [
    HomeScreen(),
    PortfolioScreen(),
    Container(),
    ChooseGuideScreen(),
    ProfileBScreen(),
  ];
  var provider;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: widget.widgetoutside ?? _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 4.0,
          color: Colors.white,
          elevation: 0.0,
          child: Container(
            height: ScreenUtil().setHeight(160),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                costumcollum("star", "Home", 0),
                costumcollum("case", "Search", 1),
                addcollum("logo", 2),
                costumcollum("signpost", "Analitycs", 3),
                costumcollum("user", "Profile", 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

//
  costumcollum(ico, txt, numb) {
    return InkWell(
      onTap: () => _onItemTapped(numb),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color:
                _selectedIndex == numb ? Color(0xFFEBEBEB) : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            "assets/$ico.svg",
            color: _selectedIndex == numb ? Colors.black : Colors.black38,
          )),
    );
  }

  addcollum(ico, numb) {
    return InkWell(
      onTap: () => null,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        height: ScreenUtil().setWidth(120),
        width: ScreenUtil().setWidth(120),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              spreadRadius: 6,
              blurRadius: 12,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: SvgPicture.asset(
          "assets/$ico.svg",
        ),
      ),
    );
  }
}

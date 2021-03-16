import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tsla/ui/screens/home_screen.dart';
import 'package:tsla/ui/utils/style.dart';

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
    Container(
      alignment: Alignment.center,
      child: Text("search"),
    ),
    Container(
      alignment: Alignment.center,
      child: Text("search"),
    ),
    Container(
      alignment: Alignment.center,
      child: Text("search"),
    ),
    // Container(
    //   alignment: Alignment.center,
    //   child: MyTest(),
    // ),
    // ProfileScreen(),
  ];
  var provider;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return SafeArea(
      child: Scaffold(
        body: widget.widgetoutside ?? _widgetOptions.elementAt(_selectedIndex),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, '/Somtag');
          },
          child: SvgPicture.asset(
            "assets/logo.svg",
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 4.0,
          // shape: CircularNotchedRectangle(),
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
                SizedBox(width: ScreenUtil().setWidth(80)),
                costumcollum("signpost", "Analitycs", 2),
                costumcollum("user", "Profile", 3),
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
                _selectedIndex == numb ? Colors.grey[100] : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            "assets/$ico.svg",
            color: _selectedIndex == numb ? Colors.black : Colors.black38,
          )),
    );
  }
}

//

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tsla/data/models/SymbolsData.dart';
import 'package:tsla/ui/utils/style.dart';
import 'package:tsla/ui/widgets/cards/mycardshome.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollViewController;
  List<SymbolsData> dummydata = [
    SymbolsData(
      id: 1,
      name: "AMC",
      levels: "597|556",
      lastclose: 643,
      zones: "750 - 897",
      close: "down",
      term: "short-term",
      percent: "56%",
      rewardrisk: 1,
    ),
    SymbolsData(
      id: 1,
      name: "DIS",
      levels: "597|556",
      lastclose: 643,
      close: "down",
      zones: "750 - 897",
      term: "long-term",
      percent: "56%",
      rewardrisk: 3,
    ),
    SymbolsData(
      id: 1,
      name: "MSFT",
      levels: "597|556",
      lastclose: 643,
      close: "up",
      zones: "750 - 897",
      term: "mid-term",
      percent: "56%",
      rewardrisk: 2,
    ),
    SymbolsData(
      id: 1,
      name: "XELB",
      levels: "597|556",
      lastclose: 643,
      close: "down",
      zones: "750 - 897",
      term: "short-term",
      percent: "56%",
      rewardrisk: 4,
    ),
  ];
  static double khkh = ScreenUtil().setWidth(55);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              title: Text(""),
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
            ),
          ];
        },
        body: ListView(
          controller: _scrollViewController,
          padding: EdgeInsets.symmetric(vertical: khkh),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: khkh),
              child: Text(
                "Today’s Picks",
                style: Style.titleTextStyle,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: khkh + 5),
              child: Text(
                "Last updated on Tuesday, Jul 20, 8am EST",
                style: Style.dateTextStyle,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(100)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: khkh - 10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: khkh - 10, vertical: 4.0),
                    child: Text(
                      "Sort",
                      style: Style.tagwhiteTextStyle,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "by Market Cap",
                          style: Style.tagblackTextStyle,
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_upward),
                          onPressed: null,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: khkh),
            // SizedBox(height: ScreenUtil().setHeight(50)),
            Container(
              height: ScreenUtil().setHeight(650),
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: khkh - 10),
                  child: ListWheelScrollView(
                    itemExtent: ScreenUtil().setHeight(650),
                    children: List.generate(dummydata.length,
                        (index) => HomeMainCard(null, dummydata[index])),
                  )),
            ),
            SizedBox(height: khkh * 10),
          ],
        ),
      ),
    );
  }
}

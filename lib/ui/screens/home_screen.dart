import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tsla/data/models/SymbolsData.dart';
import 'package:tsla/ui/utils/style.dart';
import 'package:tsla/ui/widgets/mycardshome.dart';
import 'package:tsla/ui/screens/bottomsheet/mybottomadd.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // TabController _tabController;
  bool loading = true;
  // ScrollController _scrollController = new ScrollController();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        loading = false;
      });
    });
    _tabController = TabController(
      initialIndex: 0,
      length: 1,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<SymbolsData> dummydata = [
    SymbolsData(
      id: 1,
      name: "AMC",
      levels: "597 | 556",
      lastclose: 643,
      zones: "750 - 897",
      close: "down",
      term: "Short-term",
      percent: "56%",
      rewardrisk: 1,
    ),
    SymbolsData(
      id: 1,
      name: "WKHS",
      levels: "597 | 556",
      lastclose: 643,
      zones: "750 - 897",
      close: "up",
      term: "Mid-term",
      percent: "56%",
      rewardrisk: 2,
    ),
    SymbolsData(
      id: 1,
      name: "XELB",
      levels: "597 | 556",
      lastclose: 643,
      close: "down",
      zones: "750 - 897",
      term: "Short-term",
      percent: "56%",
      rewardrisk: 4,
    ),
    SymbolsData(
      id: 1,
      name: "DIS",
      levels: "597 | 556",
      lastclose: 643,
      close: "down",
      zones: "750 - 897",
      term: "Long-term",
      percent: "56%",
      rewardrisk: 3,
    ),
    SymbolsData(
      id: 1,
      name: "MSFT",
      levels: "597 | 556",
      lastclose: 643,
      close: "up",
      zones: "750 - 897",
      term: "Mid-term",
      percent: "56%",
      rewardrisk: 2,
    ),
  ];
  static double khkh = ScreenUtil().setWidth(55);
  bool clicked = false;
  // Animation<Color> colorr(BuildContext context) => Animation();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: loading
          ? Center(
              child: Container(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Style.primaryColor),
                  strokeWidth: 10,
                ),
              ),
            )
          : Stack(
              children: [
                Container(
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().screenHeight,
                  child: NestedScrollView(
                    floatHeaderSlivers: true,
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[
                        cc(),
                      ];
                    },
                    body: TabBarView(
                      controller: _tabController,
                      children: [
                        ListView(
                          padding: EdgeInsets.symmetric(vertical: khkh),
                          children: [
                            SizedBox(height: ScreenUtil().setHeight(150)),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: khkh),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () => clickedb(),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      width: ScreenUtil().setWidth(150),
                                      height: ScreenUtil().setHeight(80),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Sort",
                                        style: Style.tagwhiteTextStyle,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: ScreenUtil().setWidth(30)),
                                  Row(
                                    children: [
                                      Text(
                                        "by Market Cap",
                                        style: Style.marketTextStyle,
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_up,
                                        size: 27,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: ScreenUtil().setWidth(60)),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: khkh),
                                child: Column(
                                  children: List.generate(
                                      dummydata.length,
                                      (index) =>
                                          HomeMainCard(null, dummydata[index])),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                clicked
                    ? BackdropFilter(
                        filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                        child: new Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: new BoxDecoration(
                              color: Colors.grey.shade200.withOpacity(0.5)),
                        ))
                    : Container(),
              ],
            ),
    );
  }

  cc() {
    return SliverAppBar(
      toolbarHeight: ScreenUtil().setHeight(280),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: ScreenUtil().setHeight(90)),
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              "Today’s Picks",
              style: Style.titleTextStyle,
            ),
          ),
          SizedBox(height: ScreenUtil().setHeight(15)),
          Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text(
              "Last updated on Tuesday, Jul 20, 8am EST",
              style: Style.dateTextStyle,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      pinned: true,
      floating: true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: Container(),
      ),
    );
  }

  clickedb() {
    setState(() {
      clicked = true;
    });
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        barrierColor: Colors.white.withOpacity(.5),
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            // setState.
            return Container(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SortBottomSheet(),
              // child: BottombarProf(),
              // child: BottomSheetops(),
            );
          });
        }).then((value) => setState(() {
          clicked = false;
        }));
  }
}

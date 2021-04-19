import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/data/models/SymbolsData.dart';
import 'package:tsla/ui/screens/bottomsheet/bottombarportf.dart';
import 'package:tsla/ui/screens/bottomsheet/bottomsheetops.dart';
import 'package:tsla/ui/screens/bottomsheet/bottomsheetsortportf.dart';
import 'package:tsla/ui/screens/portfolio/portfolio_addfirst.dart';
import 'package:tsla/ui/screens/portfolio/portfolioadd.dart';
import 'package:tsla/ui/screens/portfolio/portfoliocards.dart';
import 'package:tsla/ui/screens/portfolio/portfoliofull.dart';
import 'package:tsla/ui/utils/style.dart';
import 'package:tsla/ui/widgets/mycardportfolio.dart';

class PortfolioScreen extends StatefulWidget {
  static const routeName = 'PortfolioScreen';
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen>
    with SingleTickerProviderStateMixin {
  // TabController _tabController;
  bool loading = true;
  static double khkh = ScreenUtil().setWidth(55);
  bool clicked = false;
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
                          padding: EdgeInsets.symmetric(horizontal: khkh - 10),
                          children: [
                            // CardEmpy(clickedb),
                            SizedBox(height: ScreenUtil().setHeight(150)),
                            // PortfolioAdd(),
                            // Addfirstportf(),
                            Portfoliofull(clickedb),
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
      toolbarHeight: ScreenUtil().setHeight(400),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: ScreenUtil().setHeight(90)),
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              "Your Portfolio \nTrends",
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

  // @override
  // Widget build(BuildContext context) {
  //   ScreenUtil.init(context);
  //   return Scaffold(
  //     backgroundColor: Colors.white,
  //     body: loading
  //         ? Center(
  //             child: Container(
  //               width: 100,
  //               height: 100,
  //               child: CircularProgressIndicator(
  //                 backgroundColor: Colors.white,
  //                 valueColor: AlwaysStoppedAnimation<Color>(Style.primaryColor),
  //                 strokeWidth: 10,
  //               ),
  //             ),
  //           )
  //         : Stack(
  //             children: [
  //               Container(
  //                 width: ScreenUtil().screenWidth,
  //                 height: ScreenUtil().screenHeight,
  //                 child: ListView(
  //                   padding: EdgeInsets.symmetric(vertical: khkh),
  //                   children: [
  //                     Padding(
  //                       padding: EdgeInsets.symmetric(horizontal: khkh),
  //                       child: Text(
  //                         "Your Portfolio Trends",
  //                         style: Style.titleTextStyle,
  //                       ),
  //                     ),
  //                     SizedBox(height: ScreenUtil().setHeight(5)),
  //                     Padding(
  //                       padding: EdgeInsets.symmetric(horizontal: khkh + 5),
  //                       child: Text(
  //                         "Last updated on Tuesday, Jul 20, 8am EST",
  //                         style: Style.dateTextStyle,
  //                       ),
  //                     ),
  //                     SizedBox(height: ScreenUtil().setHeight(50)),
  //                     Padding(
  //                       padding: EdgeInsets.symmetric(horizontal: 8),
  //                       // child: Portfoliofull(clickedb),
  //                       // child: Addfirstportf(),
  //                       child: CardEmpy(clickedb),
  //                     ),
  //                     // SizedBox(height: khkh),
  //                   ],
  //                 ),
  //               ),
  //               clicked
  //                   ? BackdropFilter(
  //                       filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
  //                       child: Container(
  //                         width: 200.0,
  //                         height: 200.0,
  //                         decoration: BoxDecoration(
  //                             color: Colors.grey.shade200.withOpacity(0.5)),
  //                       ))
  //                   : Container(),
  //             ],
  //           ),
  //   );
  // }

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
              // child: SortBottomSheetPorfolio(),
              child: BottomSheetops(),
              // child: SortBottomSheetPorfolio(),
            );
          });
        }).then((value) => setState(() {
          clicked = false;
        }));
  }
}

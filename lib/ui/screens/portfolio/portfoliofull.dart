import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tsla/data/models/SymbolsData.dart';
import 'package:tsla/ui/screens/portfolio/portfolioadd.dart';
import 'package:tsla/ui/utils/style.dart';
import 'package:tsla/ui/widgets/mycardportfolio.dart';
import 'package:tsla/ui/widgets/portfoliocardsmall.dart';

class Portfoliofull extends StatefulWidget {
  Function clickdb;
  Portfoliofull(this.clickdb);

  @override
  _PortfoliofullState createState() => _PortfoliofullState();
}

class _PortfoliofullState extends State<Portfoliofull> {
  List<SymbolsData> dummydata = [
    SymbolsData(
      id: 1,
      name: "AAPL",
      levels: "299 | 301",
      lastclose: 643,
      zones: "365 - 378",
      close: "down",
      term: "Short term",
      percent: "56%",
      rewardrisk: 1,
      comment: "Possible sell this week Close to overbought levels",
      holssell: "Hold/Sell",
    ),
    SymbolsData(
      id: 1,
      name: "TSLA",
      levels: "299 | 301",
      lastclose: 643,
      zones: "365 - 378",
      close: "down",
      term: "Short-term",
      percent: "56%",
      rewardrisk: 5,
      comment: "Possible sell this week Close to overbought levels",
      holssell: "Sell",
    ),
    SymbolsData(
      id: 1,
      name: "TSLA",
      levels: "299 | 301",
      lastclose: 643,
      zones: "365 - 378",
      close: "down",
      term: "Short-term",
      percent: "56%",
      rewardrisk: 2,
      comment: "Possible sell this week Close to overbought levels",
      holssell: "Hold/Sell",
    ),
    SymbolsData(
      id: 1,
      name: "TSLA",
      levels: "299 | 301",
      lastclose: 643,
      zones: "365 - 378",
      close: "down",
      term: "Short-term",
      percent: "56%",
      rewardrisk: 4,
      comment: "Possible sell this week Close to overbought levels",
      holssell: "Hold",
    ),
  ];
  static double khkh = ScreenUtil().setWidth(55);
  bool edit = false;
  bool news = true;
  bool add = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: khkh - 10),
          child: edit
              ? Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          add = !add;
                        });
                      },
                      child: Container(
                        decoration: Style.roundblackDecoration,
                        height: ScreenUtil().setWidth(100),
                        width: ScreenUtil().setWidth(100),
                        alignment: Alignment.center,
                        child: Icon(
                          add ? Icons.chevron_left : Icons.add,
                          color: Colors.white,
                          size: ScreenUtil().setSp(80),
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          edit = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Style.primaryColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: ScreenUtil().setWidth(150),
                        height: ScreenUtil().setHeight(80),
                        alignment: Alignment.center,
                        child: Text(
                          "done",
                          style: Style.tagwhiteTextStyle,
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    InkWell(
                      onTap: () => widget.clickdb(),
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
                    SizedBox(width: 10),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "by Quality Score",
                            style: Style.marketTextStyle,
                          ),
                          Icon(
                            Icons.keyboard_arrow_up,
                            size: 27,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        setState(() {
                          edit = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: ScreenUtil().setWidth(150),
                        height: ScreenUtil().setHeight(80),
                        alignment: Alignment.center,
                        child: Text(
                          "Edit",
                          style: Style.tagwhiteTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        SizedBox(height: khkh),
        add
            ? PortfolioAdd()
            : Column(
                children: [
                  // news
                  //     ? Padding(
                  //         padding: EdgeInsets.symmetric(horizontal: 10),
                  //         child: Column(
                  //           children: List.generate(
                  //               2, (index) => PortfolioCardsmall(null, edit)),
                  //         ))
                  //     : Container(),
                  // SizedBox(height: 10),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: khkh - 10),
                      child: Column(
                        children: List.generate(
                            dummydata.length,
                            (index) =>
                                PortfolioCard(null, dummydata[index], edit)),
                      )),
                ],
              ),
      ],
    );
  }
}

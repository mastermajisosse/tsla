import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/data/models/SymbolsData.dart';
import 'package:tsla/ui/utils/style.dart';
import 'package:tsla/ui/widgets/sample.dart';

class PortfolioCardsmall extends StatefulWidget {
  final Function onTap;
  bool edit;
  PortfolioCardsmall(this.onTap, this.edit);

  @override
  _PortfolioCardsmallState createState() => _PortfolioCardsmallState();
}

class _PortfolioCardsmallState extends State<PortfolioCardsmall> {
  bool removed = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return InkWell(
      onTap: widget.onTap,
      child: Slidable(
        actionPane: SlidableDrawerActionPane(),
        enabled: widget.edit,
        secondaryActions: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                removed = true;
              });
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Container(
              margin: EdgeInsets.all(ScreenUtil().setWidth(28)),
              child: removed
                  ? Container(
                      decoration: Style.roundblackDecoration.copyWith(
                        color: Style.primaryColor,
                      ),
                      height: ScreenUtil().setWidth(85),
                      margin: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(50),
                      ),
                      width: double.infinity,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: ScreenUtil().setSp(50),
                      ),
                    )
                  : Container(
                      decoration: Style.roundblackDecoration,
                      height: ScreenUtil().setWidth(85),
                      margin: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(50),
                      ),
                      width: double.infinity,
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: ScreenUtil().setSp(50),
                      ),
                    ),
            ),
          )
        ],
        child: removed
            ? Container(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().setWidth(200),
                alignment: Alignment.center,
                child: Text("Removed from your portfolio"),
              )
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFAFAFA),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "WKHS",
                        style: Style.nameincTextStyle.copyWith(
                          color: Colors.black.withOpacity(.33),
                          fontSize: 27,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 14,
                          ),
                          SizedBox(width: 6),
                          Text(
                            "Update next Monday",
                            style: Style.dateTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFC9C9C9),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 4.0),
                        child: Text(
                          "New",
                          style: Style.normalTextStyle.copyWith(
                            fontWeight: FontWeight.w200,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

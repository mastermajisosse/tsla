import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/data/models/SymbolsData.dart';
import 'package:tsla/ui/utils/style.dart';
import 'package:tsla/ui/widgets/sample.dart';

class PortfolioCard extends StatefulWidget {
  final SymbolsData child;
  final Function onTap;
  bool edit;
  PortfolioCard(this.onTap, this.child, this.edit);

  @override
  _PortfolioCardState createState() => _PortfolioCardState();
}

class _PortfolioCardState extends State<PortfolioCard> {
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
              margin: EdgeInsets.all(ScreenUtil().setWidth(45)),
              child: removed
                  ? Container(
                      decoration: Style.roundblackDecoration.copyWith(
                        color: Style.primaryColor,
                      ),
                      height: ScreenUtil().setWidth(155),
                      width: ScreenUtil().setWidth(155),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: ScreenUtil().setSp(80),
                      ),
                    )
                  : Container(
                      decoration: Style.roundblackDecoration,
                      height: ScreenUtil().setWidth(155),
                      width: ScreenUtil().setWidth(155),
                      // width: double.infinity,
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: ScreenUtil().setSp(80),
                      ),
                    ),
            ),
          )
        ],
        child: removed
            ? Container(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().setWidth(300),
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 30),
                child: Text("Removed from your portfolio"),
              )
            : Container(
                margin: EdgeInsets.only(bottom: 16),
                width: ScreenUtil().screenWidth,
                decoration: Style.portfolioCardDecoration(removed),
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(60),
                  vertical: ScreenUtil().setWidth(50),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            widget.child.name,
                            style: Style.nameincTextStyle,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // SizedBox(width: ScreenUtil().setWidth(15)),
                              SvgPicture.asset(
                                'assets/${widget.child.close}.svg',
                                width: 13,
                                height: 11,
                              ),
                              SizedBox(width: ScreenUtil().setWidth(15)),
                              Text(
                                widget.child.term,
                                style: Style.normalslimTextStyle.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              Container(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(
                              left: 16,
                              right: 16,
                              top: 8,
                            ),
                            height: ScreenUtil().setHeight(90),
                            child: LineChart(
                              // isShowingMainData ?
                              sampleData1(),
                              // : sampleData2(),
                              swapAnimationDuration:
                                  const Duration(milliseconds: 250),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(40)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: ScreenUtil().setWidth(260),
                          child: Row(
                            children: [
                              Container(
                                decoration: Style.holdsellDecoration(
                                    widget.child.holssell),
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                  vertical: 4.0,
                                  horizontal: 8,
                                ),
                                child: Text(
                                  widget.child.holssell,
                                  style: Style.normalwhiteTextStyle.copyWith(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            margin: EdgeInsets.only(left: 8, right: 16),
                            child: Text(
                              widget.child.comment,
                              style: Style.smallslimTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(40)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.child.zones,
                                style: Style.tagblackTextStyle.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Overbought Zones",
                                style: Style.dateTextStyle2,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.child.levels,
                                style: Style.tagblackTextStyle.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 8.0),
                                child: Text(
                                  "Stop Loss Levels",
                                  style: Style.dateTextStyle2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                child: CircularProgressIndicator(
                                  strokeWidth: 6,
                                  value: (widget.child.rewardrisk * 0.2)
                                      .toDouble(),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    widget.child.rewardrisk > 3
                                        ? Style.holdcolo
                                        : Style.sellcolo,
                                  ),
                                  backgroundColor: Colors.grey[350],
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Quality Score",
                                style: Style.dateTextStyle.copyWith(
                                  fontSize: ScreenUtil().setSp(28),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: false,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: false,
      ),
      borderData: FlBorderData(
        show: false,
        border: Border(
          bottom: BorderSide(
            color: Colors.transparent,
          ),
          left: BorderSide(
            color: Colors.transparent,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      gridData: FlGridData(show: false),
      titlesData: FlTitlesData(show: false),
      minX: 0,
      maxX: 12,
      maxY: 3,
      minY: 0,
      lineBarsData: linesBarData1(),
    );
  }

  List<LineChartBarData> linesBarData1() {
    final LineChartBarData lineChartBarData1 = LineChartBarData(
      isStepLineChart: false,
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 1.5),
        FlSpot(5, 1.4),
        FlSpot(7, 3.4),
        FlSpot(10, 2),
        FlSpot(12, 2.2),
        FlSpot(13, 1.8),
      ],
      isCurved: true,
      colors: [
        const Color(0xFF6C6C6C),
      ],
      barWidth: 2,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    return [
      lineChartBarData1,
    ];
  }

  caros(reward) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(4, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.0),
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: reward > index
                  ? Style.primaryColor.withOpacity(0.1 * 2 * (index + 1))
                  : Colors.grey[200],
            ),
          ),
        );
      }),
    );
  }
}

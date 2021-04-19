import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/data/models/SymbolsData.dart';
import 'package:tsla/ui/utils/style.dart';
import 'package:tsla/ui/widgets/sample.dart';

class HomeMainCard extends StatefulWidget {
  final SymbolsData child;
  final Function onTap;
  bool enabled = false;

  HomeMainCard(this.onTap, this.child, {this.enabled});

  @override
  _HomeMainCardState createState() => _HomeMainCardState();
}

class _HomeMainCardState extends State<HomeMainCard> {
  bool added = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return InkWell(
      onTap: widget.onTap,
      child: Slidable(
        // enabled: widget.enabled,
        actionPane: SlidableDrawerActionPane(),

        secondaryActions: <Widget>[
          InkWell(
            onTap: () {
              setState(() {
                added = true;
              });
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: added
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.all(ScreenUtil().setWidth(45)),
                        child: Container(
                          decoration: Style.roundblackDecoration.copyWith(
                            color: Style.primaryColor,
                          ),
                          height: ScreenUtil().setWidth(155),
                          width: double.infinity,
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: ScreenUtil().setSp(120),
                          ),
                        ),
                      ),
                      // SizedBox(height: 12),
                      Text(
                        "Added to \nyour portfolio",
                        textAlign: TextAlign.center,
                        style: Style.smallslimTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      )
                    ],
                  )
                : Container(
                    margin: EdgeInsets.all(ScreenUtil().setWidth(45)),
                    child: Container(
                      decoration: Style.roundblackDecoration,
                      height: ScreenUtil().setWidth(155),
                      width: double.infinity,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: ScreenUtil().setSp(120),
                      ),
                    ),
                  ),
          )
        ],
        child: Container(
          margin: EdgeInsets.only(bottom: 16),
          width: ScreenUtil().screenWidth,
          decoration: Style.homeCardDecoration(added),
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(60),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: ScreenUtil().setHeight(50)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.child.name,
                          style: Style.nameincTextStyle,
                        ),
                        Text(
                          "Internet Retail",
                          style: Style.dateTextStyle.copyWith(
                            fontSize: ScreenUtil().setSp(28),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/${widget.child.close}.svg',
                              width: 13,
                              height: 11,
                            ),
                            SizedBox(width: ScreenUtil().setWidth(15)),
                            Text(
                              widget.child.lastclose.toString(),
                              style: Style.tagblackTextStyle.copyWith(
                                fontSize: ScreenUtil().setSp(50),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: ScreenUtil().setWidth(15)),
                          ],
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: ScreenUtil().setWidth(20)),
                          child: Text(
                            "Last Close",
                            style: Style.dateTextStyle.copyWith(
                              fontSize: ScreenUtil().setSp(28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 16,
                        right: 16,
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
              SizedBox(height: ScreenUtil().setHeight(50)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration:
                              Style.shorttermDecoration(widget.child.term),
                          alignment: Alignment.center,
                          width: ScreenUtil().setWidth(220),
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 8),
                          child: Text(
                            widget.child.term,
                            style: Style.normalTextStyle.copyWith(
                              fontSize: ScreenUtil().setSp(35),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.child.zones,
                          style: Style.tagblackTextStyle.copyWith(
                            fontSize: ScreenUtil().setSp(42),
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
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(50)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.child.percent,
                          style: Style.percentTextStyle.copyWith(
                            fontSize: ScreenUtil().setSp(55),
                          ),
                        ),
                        Text(
                          "Potential Gain",
                          style: Style.dateTextStyle.copyWith(
                            fontSize: ScreenUtil().setSp(28),
                          ),
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
                        caros(widget.child.rewardrisk),
                        SizedBox(height: 3),
                        Padding(
                          padding:
                              EdgeInsets.only(right: ScreenUtil().setWidth(39)),
                          child: Text(
                            "Risk / Reward",
                            style: Style.dateTextStyle.copyWith(
                              fontSize: ScreenUtil().setSp(28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.child.levels,
                          style: Style.tagblackTextStyle.copyWith(
                            fontSize: ScreenUtil().setSp(42),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Stop Loss Levels",
                          style: Style.dateTextStyle2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(60)),
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
        const Color(0xFFCCCCCC),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(4, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.0),
          child: Container(
            width: 16,
            height: 13,
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/data/models/SymbolsData.dart';
import 'package:tsla/ui/utils/style.dart';

class HomeMainCard extends StatelessWidget {
  final SymbolsData child;
  final Function onTap;
  HomeMainCard(this.onTap, this.child);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        width: ScreenUtil().screenWidth,
        decoration: Style.homeCardDecoration,
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        child.name,
                        style: Style.nameincTextStyle,
                      ),
                      Text(
                        "Internet Retail",
                        style: Style.dateTextStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/${child.close}.svg',
                          ),
                          SizedBox(width: ScreenUtil().setWidth(15)),
                          Text(
                            child.lastclose.toString(),
                            style: Style.tagblackTextStyle,
                          ),
                          SizedBox(width: ScreenUtil().setWidth(15)),
                        ],
                      ),
                      Text(
                        "Last close",
                        style: Style.dateTextStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                      // width: 100,
                      ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: Style.shorttermDecoration(child.term),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      child.term,
                      style: Style.normalTextStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      // width: 100,
                      ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        child.zones,
                        style: Style.tagblackTextStyle,
                      ),
                      Text(
                        "Overbought zones",
                        style: Style.dateTextStyle.copyWith(
                          fontSize: ScreenUtil().setSp(33),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        child.percent,
                        style: Style.percentTextStyle,
                      ),
                      Text(
                        "Potential Gain",
                        style: Style.dateTextStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      caros(child.rewardrisk),
                      Text(
                        "Rist / Rewards",
                        style: Style.dateTextStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        child.levels,
                        style: Style.tagblackTextStyle,
                      ),
                      Text(
                        "Stop Loss Levels",
                        style: Style.dateTextStyle.copyWith(
                          fontSize: ScreenUtil().setSp(33),
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
    );
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

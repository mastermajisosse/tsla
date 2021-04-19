import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/utils/style.dart';

class SortBottomSheetPorfolio extends StatefulWidget {
  @override
  _SortBottomSheetPorfolioState createState() =>
      _SortBottomSheetPorfolioState();
}

class _SortBottomSheetPorfolioState extends State<SortBottomSheetPorfolio> {
  List<bool> checked = [
    true,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Container(
        height: ScreenUtil().setWidth(880),
        width: double.infinity,
        color: Colors.white,
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(190)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              "Sort by",
              style: Style.nameincTextStyle.copyWith(
                fontSize: ScreenUtil().setSp(88),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  checked = List.generate(4, (index) => false);
                  checked[0] = true;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quality Score",
                    style: Style.namenormalTextStyle,
                  ),
                  Icon(
                    Icons.check,
                    color: checked[0] ? Style.primaryColor : Colors.transparent,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                setState(() {
                  checked = List.generate(4, (index) => false);
                  checked[1] = true;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Short term trend",
                    style: Style.namenormalTextStyle,
                  ),
                  Icon(
                    Icons.check,
                    color: checked[1] ? Style.primaryColor : Colors.transparent,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                setState(() {
                  checked = List.generate(4, (index) => false);
                  checked[2] = true;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Status",
                    style: Style.namenormalTextStyle,
                  ),
                  Icon(
                    Icons.check,
                    color: checked[2] ? Style.primaryColor : Colors.transparent,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {
                setState(() {
                  checked = List.generate(4, (index) => false);
                  checked[3] = true;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recently added",
                    style: Style.namenormalTextStyle,
                  ),
                  Icon(
                    Icons.check,
                    color: checked[3] ? Style.primaryColor : Colors.transparent,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    height: ScreenUtil().setWidth(130),
                    width: ScreenUtil().setWidth(250),
                    decoration: Style.buttonDecoration, // .buttDecotatio(),
                    alignment: Alignment.center,
                    child: Text(
                      'Done',
                      style: Style.tagwhiteTextStyle,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tsla/ui/utils/style.dart';

class BottomSheetops extends StatefulWidget {
  @override
  _BottomSheetopsState createState() => _BottomSheetopsState();
}

class _BottomSheetopsState extends State<BottomSheetops> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Container(
        height: ScreenUtil().setWidth(700),
        width: double.infinity,
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(80)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: ScreenUtil().setWidth(60)),
            Text(
              "Oops…",
              style: Style.namenormalTextStyle.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: ScreenUtil().setWidth(40)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(120),
              ),
              child: Text(
                "You have reached the limit of 30 stocks in your portfolio.",
                style: Style.namenormalTextStyle.copyWith(
                  fontSize: ScreenUtil().setSp(50),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: ScreenUtil().setWidth(70)),
            Text(
              "Please remove some before adding new.",
              style: Style.namenormalTextStyle.copyWith(
                fontSize: ScreenUtil().setSp(50),
              ),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    height: ScreenUtil().setWidth(130),
                    width: ScreenUtil().setWidth(350),
                    decoration: Style.buttonDecoration, // .buttDecotatio(),
                    alignment: Alignment.center,
                    child: Text(
                      'Got it',
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

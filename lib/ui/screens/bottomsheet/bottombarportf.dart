import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/utils/style.dart';

class BottombarProf extends StatefulWidget {
  @override
  _BottombarProfState createState() => _BottombarProfState();
}

class _BottombarProfState extends State<BottombarProf> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Container(
        height: ScreenUtil().setWidth(600),
        width: double.infinity,
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(120)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: ScreenUtil().setWidth(120)),
            Text(
              "Looks like you already \n have this stock in your portfolio.",
              style: Style.namenormalTextStyle.copyWith(
                fontWeight: FontWeight.bold,
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

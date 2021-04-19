import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/utils/style.dart';

class Addfirstportf extends StatefulWidget {
  static double khkh = ScreenUtil().setWidth(55);

  @override
  _AddfirstportfState createState() => _AddfirstportfState();
}

class _AddfirstportfState extends State<Addfirstportf> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: Addfirstportf.khkh * 4),
        SvgPicture.asset("assets/financepofo.svg"),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(60)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[100],
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5),
                Text(
                  "It’s empty here…",
                  style: Style.tagblackTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(66),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  "Add a first stock to\n Your Portfolio",
                  style: Style.namenormalTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Container(
                          height: ScreenUtil().setWidth(130),
                          width: ScreenUtil().setWidth(130),
                          decoration:
                              Style.buttonblackDecoration, // .buttDecotatio(),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 32,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

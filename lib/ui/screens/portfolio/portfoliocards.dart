import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tsla/ui/utils/style.dart';

class CardEmpy extends StatefulWidget {
  Function clickdb;
  CardEmpy(this.clickdb);

  @override
  _CardEmpyState createState() => _CardEmpyState();
}

class _CardEmpyState extends State<CardEmpy> {
  static double khkh = ScreenUtil().setWidth(55);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: khkh - 10),
          child: Row(
            children: [
              InkWell(
                onTap: () => widget.clickdb(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: khkh - 10, vertical: 4.0),
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
                      style: Style.tagblackTextStyle,
                    ),
                    IconButton(
                      icon: Icon(Icons.keyboard_arrow_up),
                      onPressed: null,
                    )
                  ],
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () => widget.clickdb(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: khkh - 10, vertical: 4.0),
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
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Text(
                "WKHS",
                style: Style.nameincTextStyle.copyWith(
                  color: Colors.black.withOpacity(.33),
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.timer,
                size: 14,
              ),
              SizedBox(width: 2),
              Text(
                "Update next Monday",
                style: Style.dateTextStyle,
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4.0),
                child: Text(
                  "New",
                  style: Style.normalTextStyle.copyWith(
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

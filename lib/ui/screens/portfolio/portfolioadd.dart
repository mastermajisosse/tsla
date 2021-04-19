import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:searchfield/searchfield.dart';
import 'package:tsla/ui/utils/style.dart';

class PortfolioAdd extends StatefulWidget {
  @override
  _PortfolioAddState createState() => _PortfolioAddState();
}

class _PortfolioAddState extends State<PortfolioAdd> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  final formKey = GlobalKey<FormState>();

  List<String> suggestionss = [
    'TSLA',
    'TSP',
    'TSML',
    'TSLA',
    'TSLA',
    'TSLA',
    'TSLA',
  ];
  List<bool> added = List.generate(3, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          child: Form(
            key: formKey,
            child: SearchField(
              suggestions: [],
              hint: 'Search symbol…',
              searchStyle: TextStyle(
                fontSize: 27,
                fontFamily: Style.fontf,
                color: const Color(0xff000000),
                letterSpacing: -0.54,
                fontWeight: FontWeight.w600,
              ),
              searchInputDecoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              maxSuggestionsInViewPort: 6,
              itemHeight: 50,
              onTap: (x) {
                print(x);
              },
            ),
          ),
        ),
        SizedBox(height: ScreenUtil().setHeight(100)),
        Column(
          children: List.generate(3, (index) => serchh(index)),
        )
      ],
    );
  }

  serchh(i) {
    return Container(
      width: 230,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(suggestionss[i], style: Style.addnewTextStyle),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    added = List.generate(3, (index) => false);
                    added[i] = true;
                  });
                },
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                child: Container(
                  decoration: added[i]
                      ? Style.roundprimDecoration
                      : Style.roundblackDecoration,
                  height: ScreenUtil().setWidth(130),
                  width: ScreenUtil().setWidth(130),
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(43),
                  ),
                  // width: double.infinity,
                  child: Icon(
                    added[i] ? Icons.check : Icons.add,
                    color: Colors.white,
                    size: ScreenUtil().setSp(80),
                  ),
                ),
              ),
            ],
          ),
          added[i]
              ? Text(
                  "Added to your portfolio",
                  style: TextStyle(
                    fontFamily: Style.fontf,
                    fontSize: 15,
                    color: const Color(0xff000000),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

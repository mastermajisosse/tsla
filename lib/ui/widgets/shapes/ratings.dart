import 'package:flutter/material.dart';

import '../../utils/style.dart';

class Ratings extends StatelessWidget {
  final double index;

  const Ratings({Key key, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> listStars(double index) {
      index.floor();
      List<Widget> list = new List();
      for (var i = 1; i <= 5; i++) {
        if (index >= i) {
          list.add(Padding(
            padding: EdgeInsets.only(right: 0),
            child: Icon(
              Icons.star,
              size: 15.0,
              color: Style.primaryColor,
            ),
          ));
        } else if (i == index.ceil() && index.floor() != index) {
          list.add(Padding(
            padding: EdgeInsets.only(right: 0),
            child: Icon(
              Icons.star_half,
              size: 15.0,
              color: Style.primaryColor,
            ),
          ));
        } else {
          list.add(Padding(
            padding: EdgeInsets.only(right: 0),
            child: Icon(Icons.star,
                size: 15.0, color: Style.primaryColor.withOpacity(.5)),
          ));
        }
      }
      return list;
    }

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: listStars(index),
      ),
    );
  }
}

import 'package:flutter/rendering.dart';

class Scroling {
  void myScroll(
    _scrollBottomBarController,
    isScrollingDown,
    _showAppbar,
    Function fun,
  ) async {
    _scrollBottomBarController.addListener(() {
      if (_scrollBottomBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          fun;
        }
      }
    });
  }
}

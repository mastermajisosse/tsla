import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/screens/bottom_bar.dart';

class Splashs extends StatefulWidget {
  final double radius;
  final double dotRadius;
  static const routeName = 'SplashScreen';

  Splashs({this.radius = 50.0, this.dotRadius = 10.0});
  @override
  _SplashsState createState() => _SplashsState();
}

class _SplashsState extends State<Splashs> with SingleTickerProviderStateMixin {
  AnimationController controller;
  double radius;
  double dotRadius;
  int _counter = 0;
  int elapsed = 1;
  Animation<double> animation;

  void _incrementCounter() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 1, end: 8).animate(controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomTabBarr()),
      );
    });
    _incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: animation,
                builder: (context, child) => SvgPicture.asset(
                  "assets/splash/Frame_000000${animation.value.truncate().toString()}.svg",
                  // AssetImage(
                  //     'assets/splash/Frame_000000${animation.value.truncate().toString()}.png'),
                  key: ValueKey(elapsed),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

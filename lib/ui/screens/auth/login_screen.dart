import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/screens/bottom_bar.dart';
import 'package:tsla/ui/utils/style.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  final email = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          print("oo");
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: formKey,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: ScreenUtil().setHeight(80)),
                  Container(
                    height: ScreenUtil().setHeight(220),
                    width: 200,
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(120)),
                    child: Image.asset(
                      'assets/logoname.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(160)),
                  //email
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(120)),
                    child: TextFormField(
                      cursorColor: Colors.blueGrey,
                      controller: email,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: Style.placeholderTextStyle,
                      ),
                      validator: (value) {
                        if (value.isEmpty) return 'Empty field';
                        return null;
                      },
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(50)),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(120)),
                    child: TextFormField(
                      cursorColor: Colors.blueGrey,
                      controller: password,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: Style.placeholderTextStyle,
                      ),
                      obscureText: obscure,
                      validator: (value) {
                        if (value.isEmpty) return 'Empty field';
                        return null;
                      },
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(160)), // 55),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(120)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign in",
                          style: Style.percentTextStyle,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: Style.buttonDecoration,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 18,
                            ),
                            onPressed: () {
                              if (formKey.currentState.validate())
                                Navigator.pushReplacementNamed(
                                    context, BottomTabBarr.routeName);
                              // Navigator.pop(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: ScreenUtil().setHeight(100)),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: ScreenUtil().setWidth(60),
                          right: ScreenUtil().setWidth(60),
                          top: ScreenUtil().setHeight(250),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[100],
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 26, vertical: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "Don’t have an account yet?",
                                style: Style.namenormalTextStyle.copyWith(
                                  fontSize: ScreenUtil().setSp(55),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: InkWell(
                                  onTap: () {
                                    // Navigator.pop(context);/
                                    // Navigator.pushReplacementNamed(
                                    //     context, BottomTabBarr.routeName);
                                  },
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.0),
                                    child: Container(
                                      height: ScreenUtil().setWidth(130),
                                      width: ScreenUtil().setWidth(350),
                                      decoration: Style
                                          .buttonblackDecoration, // .buttDecotatio(),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Sign up',
                                        style: Style.butwhiteTextStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: SvgPicture.asset("assets/signincom.svg"),
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(100)),

                  Text(
                    "Reset password",
                    style: Style.namenormalTextStyle.copyWith(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

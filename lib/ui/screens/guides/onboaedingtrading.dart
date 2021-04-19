import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/utils/style.dart';

class OnBoardingTradingScreen extends StatefulWidget {
  @override
  _OnBoardingTradingScreenState createState() =>
      _OnBoardingTradingScreenState();
}

class _OnBoardingTradingScreenState extends State<OnBoardingTradingScreen> {
  int currentIndex = 0;

  List<OnBoardingData22> onboarding = [
    OnBoardingData22(
      title: "",
      img: "assets/guide/guidetrend5.png",
      desc: Container(
        width: double.infinity,
        child: Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: Style.fontf,
              fontSize: 15,
              color: const Color(0xff000000),
            ),
            children: [
              TextSpan(
                text:
                    'Each element in the card represents an\nactionable piece of information that can\nhelp you manage your portfolio. \n\n',
              ),
              TextSpan(
                text:
                    'Swipe left/right to learn more about each\nelement of the card.',
                style: TextStyle(
                  color: const Color(0xff989898),
                ),
              ),
            ],
          ),
          textHeightBehavior:
              TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.left,
        ),
      ),
    ),
    OnBoardingData22(
      title: "Stock symbol",
      img: "assets/guide/guidetrend7.png",
      desc: Text(
        'Symbol of the company’s stock. Common\nidentifier across apps, brokers and exchanges. ',
        style: TextStyle(
          fontFamily: Style.fontf,
          fontSize: 15,
          color: const Color(0xff000000),
        ),
      ),
    ),
    OnBoardingData22(
      title: "Short-term trend",
      img: "assets/guide/guidetrend8.png",
      desc: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Arrow ",
              style: TextStyle(
                fontFamily: Style.fontf,
                fontSize: 15,
                color: const Color(0xff000000),
              ),
            ),
            WidgetSpan(
                child: Icon(
              Icons.arrow_drop_up,
              color: Colors.green,
            )),
            TextSpan(
              text: " or ",
              style: TextStyle(
                fontFamily: Style.fontf,
                fontSize: 15,
                color: const Color(0xff000000),
              ),
            ),
            WidgetSpan(
                child: Icon(
              Icons.arrow_drop_down,
              color: Colors.red,
            )),
            TextSpan(
              text:
                  "  indicates the short-term trend prediction for the next 5-8 days.\n\nChart represents the price over last 21 days and the red/green line is an expected price direction over the next 5-8 days.",
              style: TextStyle(
                fontFamily: Style.fontf,
                fontSize: 15,
                color: const Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
    ),
    OnBoardingData22(
      title: "Status",
      img: "assets/guide/guidetrend9.png",
      desc: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "There are 3 status types ",
              style: TextStyle(
                fontFamily: Style.fontf,
                fontSize: 15,
                color: const Color(0xff000000),
              ),
            ),
            WidgetSpan(
              child: Container(
                decoration: Style.holdsellDecoration("Hold"),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Text(
                  "Hold",
                  style: Style.normalTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(35),
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            TextSpan(
              text: " ",
            ),
            WidgetSpan(
              child: Container(
                decoration: Style.holdsellDecoration("Hold/Sell"),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Text(
                  "Hold/Sell",
                  style: Style.normalTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(35),
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            TextSpan(
              text: " ",
            ),
            WidgetSpan(
              child: Container(
                decoration: Style.holdsellDecoration("Sell"),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Text(
                  "Sell",
                  style: Style.normalTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(35),
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            TextSpan(
              text:
                  " \n\nQuickly check if a stock that you have in portfolio requires your attention this week or not.",
              style: TextStyle(
                fontFamily: Style.fontf,
                fontSize: 15,
                color: const Color(0xff000000),
              ),
            ),
            TextSpan(
              text: "\n\nMostly applies to.",
              style: TextStyle(
                fontFamily: Style.fontf,
                fontSize: 15,
                color: const Color(0xff000000),
              ),
            ),
            WidgetSpan(
              child: Container(
                decoration: Style.holdsellDecoration("Hold/Sell"),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Text(
                  "Hold/Sell",
                  style: Style.normalTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(35),
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            TextSpan(
              text: " ",
            ),
            WidgetSpan(
              child: Container(
                decoration: Style.holdsellDecoration("Sell"),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Text(
                  "Sell",
                  style: Style.normalTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(35),
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            TextSpan(
              text: " labels.",
              style: TextStyle(
                fontFamily: Style.fontf,
                fontSize: 15,
                color: const Color(0xff000000),
              ),
            ),
          ],
        ),
      ),
    ),
    OnBoardingData22(
      title: "Overview",
      img: "assets/guide/guidetrend10.png",
      desc: Text(
        'Few sentences overview of what you can\nexpect from the stock this week and what to\nlook out for in the short-term.',
        style: TextStyle(
          fontFamily: Style.fontf,
          fontSize: 15,
          color: const Color(0xff000000),
        ),
      ),
    ),
    OnBoardingData22(
      title: "Overbought & Stop Loss Levels",
      img: "assets/guide/guidetrend11.png",
      desc: Text(
        'Updated Overbought Zones and Stop Loss\nLevels based on the stock movement from \nprevious week.\n\nAdjust those price targets in your trading app\non weekly basis.',
        style: TextStyle(
          fontFamily: Style.fontf,
          fontSize: 15,
          color: const Color(0xff000000),
        ),
      ),
    ),
    OnBoardingData22(
      title: "Quality Score",
      img: "assets/guide/guidetrend12.png",
      desc: Text(
        'This score applies to the stock overall quality.\nHighly scored (green) stocks are less risky to\nhold and have a good long term hold potential.\n\nStocks with average or low scores (red) are\ngood for short to mid term trades. Require\ncloser attention but can bring higher gains\nquicker.',
        style: TextStyle(
          fontFamily: Style.fontf,
          fontSize: 15,
          color: const Color(0xff000000),
        ),
      ),
    ),
  ];

  Widget pageIndexInicator(bool isCurrentPage) {
    return Container(
      height: isCurrentPage
          ? ScreenUtil().screenWidth * 0.038
          : ScreenUtil().screenWidth * 0.038,
      width: isCurrentPage
          ? ScreenUtil().screenWidth * 0.038
          : ScreenUtil().screenWidth * 0.038,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isCurrentPage ? Style.primaryColor : Colors.grey[200],
      ),
    );
  }

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        controller: controller,
        // physics: ClampingScrollPhysics(),
        onPageChanged: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        itemCount: onboarding.length,
        itemBuilder: (ctx, index) => ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          // physics: ClampingScrollPhysics(),
          padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(60),
              right: ScreenUtil().setWidth(60)),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(80),
                  right: ScreenUtil().setWidth(80)),
              child: Text(
                'Understanding the stock card',
                style: TextStyle(
                  fontFamily: Style.fontf,
                  fontSize: 25,
                  color: const Color(0xff0005d9),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(50)),
            Container(
              height: ScreenUtil().setHeight(500),
              child: Image.asset(
                onboarding[index].img,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(60)),
            Padding(
              padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(30),
                  right: ScreenUtil().setWidth(30)),
              child: Text(
                onboarding[index].title,
                style: TextStyle(
                  fontFamily: Style.fontf,
                  fontSize: 20,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(70)),
            Padding(
              padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(30),
                  right: ScreenUtil().setWidth(10)),
              child: onboarding[index].desc,
            ),
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          pageIndexInicator(currentIndex == 0 ? true : false),
          SizedBox(width: 20),
          pageIndexInicator(currentIndex == 1 ? true : false),
          SizedBox(width: 20),
          pageIndexInicator(currentIndex == 2 ? true : false),
          SizedBox(width: 20),
          pageIndexInicator(currentIndex == 3 ? true : false),
          SizedBox(width: 20),
          pageIndexInicator(currentIndex == 4 ? true : false),
          SizedBox(width: 20),
          pageIndexInicator(currentIndex == 5 ? true : false),
          SizedBox(width: 20),
          pageIndexInicator(currentIndex == 6 ? true : false)
        ],
      ),
    );
  }
}

class OnBoardingData22 with ChangeNotifier {
  String title;

  String img;
  // String subt;

  Widget desc;

  OnBoardingData22({
    this.title,
    this.desc,
    this.img,
    // this.subt,
  });
}

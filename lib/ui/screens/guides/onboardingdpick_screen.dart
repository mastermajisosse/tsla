import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tsla/ui/utils/style.dart';

class OnBoardingDpickScreen extends StatefulWidget {
  @override
  _OnBoardingDpickScreenState createState() => _OnBoardingDpickScreenState();
}

class _OnBoardingDpickScreenState extends State<OnBoardingDpickScreen> {
  int currentIndex = 0;

  List<OnBoardingData22> onboarding = [
    OnBoardingData22(
      title: "",
      img: "assets/guide/dpick3.png",
      desc: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3.0),
        child: Text(
          'Each element in the card represents an actionable piece of information that can help you picking the stock that fits your trading style and adjust settings in your trading app.',
          style: TextStyle(
            fontFamily: Style.fontf,
            fontSize: 17,
            color: const Color(0xff000000),
          ),
        ),
      ),
    ),
    //
    OnBoardingData22(
      title: "Stock symbol & sector",
      img: "assets/guide/dpick6.png",
      desc: Text(
        'Symbol of the company’s stock. Common identifier across apps, brokers and exchanges. \n\nBelow, sector where the company operates in.',
        style: TextStyle(
          fontFamily: Style.fontf,
          fontSize: 15,
          color: const Color(0xff000000),
        ),
      ),
    ),
    OnBoardingData22(
      title: "Last close",
      img: "assets/guide/dpick5.png",
      desc: Text(
        'Stock price at recent market close. The arrow indicates whether a price increased or decreased vs. the day before.\n\nLevels around this value or lower are the most optimal when entering a trade.',
        style: TextStyle(
          fontFamily: Style.fontf,
          fontSize: 15,
          color: const Color(0xff000000),
        ),
      ),
    ),

    OnBoardingData22(
      title: "Trade time frame",
      img: "assets/guide/dpick7.png",
      desc: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text:
                  "Expected time frame for the trade to reach the best gain potential.\n\n",
              style: TextStyle(
                fontFamily: Style.fontf,
                fontSize: 15,
                color: const Color(0xff000000),
              ),
            ),
            WidgetSpan(
              child: Container(
                decoration: Style.shorttermDecoration("Short-term"),
                alignment: Alignment.center,
                width: ScreenUtil().setWidth(220),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Text(
                  "Short-term",
                  style: Style.normalTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(35),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            TextSpan(
              text: "     1-7 days\n\n",
              style: TextStyle(
                fontFamily: Style.fontf,
                fontSize: 15,
                color: const Color(0xff000000),
              ),
            ),
            WidgetSpan(
              child: Container(
                decoration: Style.shorttermDecoration("Mid-term"),
                alignment: Alignment.center,
                width: ScreenUtil().setWidth(220),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Text(
                  "Mid-term",
                  style: Style.normalTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(35),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            TextSpan(
              text: "     7-35 days\n\n",
              style: TextStyle(
                fontFamily: Style.fontf,
                fontSize: 15,
                color: const Color(0xff000000),
              ),
            ),
            WidgetSpan(
              child: Container(
                decoration: Style.shorttermDecoration("Long-term"),
                alignment: Alignment.center,
                width: ScreenUtil().setWidth(220),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                child: Text(
                  "Long-term",
                  style: Style.normalTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(35),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            TextSpan(
              text: "     35+ days",
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
      title: "Potential Gain",
      img: "assets/guide/dpick8.png",
      desc: Text(
        'Expected potential gain considering the trade time frame, generated at the time when picked by the AI.  \n\nThis value may change when the stock starts to move over time. Treat this value as an estimate and not as a strict goal to reach. ',
        style: TextStyle(
          fontFamily: Style.fontf,
          fontSize: 15,
          color: const Color(0xff000000),
        ),
      ),
    ),
    OnBoardingData22(
      title: "Risk vs. Reward",
      img: "assets/guide/dpick9.png",
      desc: Text(
        'The higher it is (1 - 4), the higher and quicker expected return you should get but with a greater risk associated.',
        style: TextStyle(
          fontFamily: Style.fontf,
          fontSize: 15,
          color: const Color(0xff000000),
        ),
      ),
    ),
    OnBoardingData22(
      title: "Overbought Zones",
      img: "assets/guide/dpick10.png",
      desc: Text(
        'Considering the time when picked, maximum price levels where it would make sense to lock profits. Those values will change as the stock moves over time.  \n\nUpdated on weekly basis when a stock is added to your portfolio.',
        style: TextStyle(
          fontFamily: Style.fontf,
          fontSize: 15,
          color: const Color(0xff000000),
        ),
      ),
    ),
    OnBoardingData22(
      title: "Stop Loss Levels",
      img: "assets/guide/dpick11.png",
      desc: Text(
        'Suggested stop loss levels depending on your risk tolerance so you can cut loss at a fair level if the stock doesn’t go up as expected.  \n\nUpdated on weekly basis when a stock is added to your portfolio.',
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
            SizedBox(height: ScreenUtil().setHeight(80)),
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
          pageIndexInicator(currentIndex == 6 ? true : false),
          SizedBox(width: 20),
          pageIndexInicator(currentIndex == 7 ? true : false)
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

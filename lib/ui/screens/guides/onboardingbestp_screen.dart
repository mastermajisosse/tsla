import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tsla/ui/utils/style.dart';

class OnboardingbestPractice extends StatefulWidget {
  @override
  _OnboardingbestPracticeState createState() => _OnboardingbestPracticeState();
}

class _OnboardingbestPracticeState extends State<OnboardingbestPractice> {
  int currentIndex = 0;

  List<OnBoardingData> onBoardingData = [
    OnBoardingData(
      title: "Never buy at the market open",
      desc:
          "Observe the price action between 10:30-12 EST and then act accordingly if you notice a trend. \n\nIf there's a strong downtrend, wait until the end of the session.\n\nIf there’s a clear uptrend, open the position.",
    ),
    OnBoardingData(
        title: "Don’t be greedy",
        desc:
            "Lock any substantial gains instead of waiting for more. The potential gain value provided in the pick will change over time. Don't be greedy, there's always another runner around the corner. Think of consistency in generating gains and compound interest. \n\nAt the same time don’t sell, prematurely. Your Portfolio Trends will help you with that."),
    OnBoardingData(
        title: "Diversify",
        desc:
            "Never allocate all of the money into a single stock but rather spread it across multiple. Be especially careful with small-cap stocks."),
    OnBoardingData(
        title: "Be patient",
        desc:
            "Stocks will rarely move directly up on the same day when picked by our AI. \n\n Don’t panic sell, give them some room to breathe - especially at times when the whole market is down. Our AI is not designed for day trading and remember about the time frames added to each pick. "),
    OnBoardingData(
        title: "Be careful",
        desc:
            "Be careful when opening position if the stock has dramatically dropped during pre-market or at open when picked by our system and/or there’s a wider market correction happening. In most cases it’s safer to wait it over and come back to those stocks later. Same rule applies if the stock has run up hard in pre-market. Best entry price is the one near last known close price."),
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
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
            pageIndexInicator(currentIndex == 4 ? true : false)
          ],
        ),
      ),
      body: PageView.builder(
        controller: controller,
        // physics: ClampingScrollPhysics(),
        onPageChanged: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        itemCount: onBoardingData.length,
        itemBuilder: (ctx, index) => ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          // physics: ClampingScrollPhysics(),
          padding: EdgeInsets.all(24),
          children: <Widget>[
            Text(
              '${onBoardingData[index].title}',
              style: Style.titleTextStyleguide,
            ),
            SizedBox(width: ScreenUtil().setHeight(300)),
            Padding(
              padding: EdgeInsets.only(
                left: 8,
                right: 8,
                top: ScreenUtil().setHeight(100),
              ),
              child: Text(
                '${onBoardingData[index].desc}',
                style: Style.subtitlTextStyle.copyWith(
                  fontSize: ScreenUtil().setSp(70),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingData with ChangeNotifier {
  String title;
  String desc;

  OnBoardingData({
    this.title,
    this.desc,
  });
}

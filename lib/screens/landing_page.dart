import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';

class LandingPage extends StatefulWidget {

  const LandingPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}


class _LandingPageState extends State<LandingPage> {
  final PageController pageController = PageController();

  List<String> textList = ["hello", "test", "hi"];
  late int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                  controller: pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 50.h),
                          child: Center(
                            child: Image.asset(
                                "assets/img/splashone.PNG",
                                fit: BoxFit.fitHeight
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40,bottom: 10),
                          child: const Center(
                            child: CustomTextView(
                              text: "Welcome To The World Of Language App",
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              maxLine: 2,
                              fontColor: Color(0xff0300000),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        //
                        Container(
                          margin: const EdgeInsets.all(10),
                          child: const Center(
                            child: CustomTextView(
                              text: "Learning has never been so easy! With Mystery Language yoy will learn to speak your dream language no time",
                              fontSize: 16,
                              maxLine: 3,
                              textAlign: TextAlign.center,
                              fontColor: Colors.grey,
                              //31347A
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 5,
              width: double.infinity,
              child: Center(
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: index == currentPage
                              ? const Color(0xff31347A)
                              : Colors.grey,
                        ),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 12,
            ),

          ],
        ),
      ),
    );
  }
}
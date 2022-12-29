import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/screens/login/login.dart';
import '../../../widget/custom_button.dart';
import '../../../widget/custom_text.dart';

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
            if (currentPage == 2)
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          nextPage: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) =>  LoginTextField()
                                ),
                                    (route) => false);
                          },
                          text: 'Log In',
                          height: 40,
                          width: double.infinity,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: CustomButton(
                          nextPage: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginTextField()));
                          },
                          text: 'Sign In',
                          height: 40,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            else
              Padding(
                padding:
                const EdgeInsets.only(bottom: 30, left: 20, right: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          if (currentPage == 0) {
                            currentPage = 2;
                          } else {
                            currentPage += 1;
                          }
                          pageController.animateToPage(currentPage,
                              curve: Curves.decelerate,
                              duration: const Duration(milliseconds: 300));
                        });
                      },
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomTextView(
                            text: "Skip",
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Container(
                            height: 1.h,
                            width: 15.w,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (currentPage == 2) {
                            currentPage = 0;
                          } else {
                            currentPage += 1;
                          }
                          pageController.animateToPage(currentPage,
                              curve: Curves.decelerate,
                              duration: const Duration(milliseconds: 300));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.transparent,
                            border: Border.all(
                                width: 1, color: const Color(0xff03032b))
                        ),
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff31347A),
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 20.h)
          ],
        ),
      ),
    );
  }
}
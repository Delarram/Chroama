import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/const/color_const.dart';
import 'package:untitled/widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../../widget/ghost_button.dart';
import '../landingpage/landing_page.dart';
class SignUpLoginScreen extends StatefulWidget {
  const SignUpLoginScreen({Key? key}) : super(key: key);

  @override
  State<SignUpLoginScreen> createState() => _SignUpLoginScreenState();
}

class _SignUpLoginScreenState extends State<SignUpLoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: cPrimaryColor,
                        borderRadius: BorderRadius.circular(10.r),
                    ),
                    height: 65.h,
                    width: 109.w,
                    child: CustomTextView(text: "DP Tech",fontWeight: FontWeight.w600,fontSize: 18.sp,fontColor: Colors.white,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100.h, bottom: 60.h),
                    child: CustomTextView(
                      text: "Improve your english from this app with 💯 ❤️",
                      fontSize: 25.sp,
                    ),
                  ),
                  // SizedBox(height:50.h,),
                  Padding(
                    padding: EdgeInsets.only(top: 120.h),
                    child: Column(
                      children: [
                        CustomButton(
                            width: double.infinity,
                            height: 40.h,
                            text: "Sign Up",
                             nextPage: () {
                               Navigator.push(context, MaterialPageRoute(builder: (_)=> const LandingPage()));
                             },),
                        SizedBox(
                          height: 10.h,
                        ),
                        GhostButtonView(
                          width: double.infinity,
                          height: 40.h,
                          borderRadius: 5.r,
                          text: "Log In",
                          fontSize: 14.sp,fontColor: Colors.white,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> LandingPage()));
                          },
                          buttonColor: Colors.black.withOpacity(0.0),
                        ),
                      ],
                    ),
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

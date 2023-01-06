import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/pages/otppage/otp_page.dart';
import 'package:untitled/widget/custom_text.dart';
import '../../widget/custom_button.dart';
import '../../widget/custom_text_field.dart';


class LoginTextField extends StatelessWidget {
  const LoginTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 150.h),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // RichText(text: TextSpan(
                  //   style: TextStyle(fontSize: 30),
                  //   children: [
                  //     TextSpan(text: "M",style: TextStyle(color: Colors.blue)),
                  //     TextSpan(text: "ystery",style: TextStyle(color: Colors.grey))
                  //   ]
                  // )),
                  CustomTextView(
                    text: "Please Log In  here",
                    fontSize: 26.sp,
                    fontColor:const Color(0xff36688D),
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 30,),
                CustomTextField(
                    margin: const EdgeInsets.only(bottom: 15,),
                    height: 40.h,
                    width: double.infinity,
                    labelText: "Username",
                    obsureText: false,

                  ),
                  SizedBox(height: 15.h,),
                  CustomTextField(
                    margin: const EdgeInsets.only(bottom: 15,),
                    height: 40.h,
                    width: double.infinity,
                    labelText: "Password",
                    obsureText: true,
                  ),SizedBox(height: 15.h,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CustomTextView(
                      text: "Forgot your password?",
                      fontSize: 14.sp,
                      fontColor:Colors.grey,
                      //Color(0xFF08061F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20.w,height: 15.w,
                  ),
                  CustomButton(
                    width: double.infinity,
                    text: "Log In",
                    height: 40.h,
                    nextPage: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>OtpPage()));
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
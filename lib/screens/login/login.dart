import 'package:flutter/material.dart';
import 'package:untitled/const/color_const.dart';

import 'package:untitled/widget/custom_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 150),
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
                    fontSize: 26,
                    fontColor:Color(0xff36688D),
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 30,),
                  CustomTextField(
                    margin: EdgeInsets.only(bottom: 15,),
                    height: 50,
                    width: double.infinity,
                    labelText: "Username",
                    obsureText: false,
                    suffixIcon: Icon(
                      FontAwesomeIcons.eyeSlash,
                      color:Colors.grey,
                      //Color(0xff0D0B4A),
                      size: 20,
                    ),
                  ),SizedBox(height: 15,),
                  CustomTextField(
                    margin: EdgeInsets.only(bottom: 15,),
                    height: 50,
                    width: double.infinity,
                    labelText: "Password",
                    obsureText: true,
                    suffixIcon: Icon(
                      FontAwesomeIcons.ellipsis,
                      color: Colors.grey,
                      // Color(0xff0D0B4A),
                      size: 20,
                    ),
                  ),SizedBox(height: 15,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CustomTextView(
                      text: "Forgot your password?",
                      fontSize: 14,
                      fontColor:Colors.grey,
                      //Color(0xFF08061F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,height: 15,
                  ),
                  CustomButton(
                    width: double.infinity,
                    text: "Log In",
                    height: 40,
                    nextPage: (){
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
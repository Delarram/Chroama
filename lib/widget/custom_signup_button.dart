import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_text.dart';

class CustomSignupButton extends StatelessWidget {
  final String? image;
  final String text;
  const CustomSignupButton({Key? key,  this.image, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.symmetric(vertical: 8.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            border: Border.all(width: 1,color: Colors.black38
            )
        ),
        child: Row(
          children: [
            SizedBox(width: 20.w,),
            // Image.asset("assets/imgs/google.png"),
            Image.asset(image!,height: 25.w,) ,
            SizedBox(width: 15.w,),
            CustomTextView(
              text:text,fontSize: 16.sp,fontWeight: FontWeight.w500,
              fontColor: Colors.white,
            ),
          ],
        )
    );
  }
}

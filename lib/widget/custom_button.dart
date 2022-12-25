import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/widget/custom_text.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final dynamic margin;
  final Function nextPage;

  const CustomButton({Key? key, required this.width, required this.text, required this.height, this.margin, required this.nextPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>nextPage,
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.all(5),
        decoration:  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            border: Border.all(width: 2,color:Color(0xFF1E4680),),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xff0D0B4A),
                  Color(0xff0D0B4A),
                  // Color(0xFF1E4680),
                  Color(0xff0D0B4A),
                  Color(0xff0D0B4A),
                ])),
        child: Center(
          child:CustomTextView(
            text: text,
            fontColor: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
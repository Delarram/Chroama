import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextView extends StatelessWidget {
  const CustomTextView({Key? key, required this.text,  this.fontSize,  this.fontWeight,  this.fontColor, this.maxLine, this.overflow, this.isUnderLine=false,  this.textAlign, this.lineHeight, this.fontFamily = "roboto"}) : super(key: key);

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;
  final int? maxLine;
  final TextOverflow? overflow;
  final bool? isUnderLine;
  final TextAlign? textAlign;
  final double? lineHeight;
  final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      style: TextStyle(
        overflow: overflow,
        fontSize: fontSize??14.sp,
        fontWeight: fontWeight,
        color: fontColor ?? Colors.black,
        height: lineHeight,
        fontFamily:fontFamily,
        decoration: isUnderLine==true?TextDecoration.underline:TextDecoration.none,
      ),
    );
  }
}

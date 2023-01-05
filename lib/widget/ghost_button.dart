import 'package:flutter/material.dart';

import 'package:untitled/widget/custom_text.dart';


class GhostButtonView extends StatelessWidget {
  const GhostButtonView(
      {Key? key,
        required this.width,
        required this.height,
        required this.borderRadius,
        required this.text,
        this.fontColor,
        this.fontSize,
        required this.onPressed,
        this.buttonColor = Colors.white, this.borderColor})
      : super(key: key);

  final double width;
  final double height;
  final double borderRadius;
  final String text;
  final Color? fontColor;
  final double? fontSize;
  final Function onPressed;
  final Color? buttonColor;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor??Colors.white,width: 2),
      ),
      child: MaterialButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        onPressed: () {
          onPressed();
        },
        child: Center(
          child: CustomTextView(
            text: text,
            fontColor: fontColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

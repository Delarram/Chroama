
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class CustomOtpTextField extends StatelessWidget {
  final double height;
  final double width;
  final Color? color;
  final String? hintText;
  final Function? onChange;

  const CustomOtpTextField(
      {Key? key,
        required this.height,
        required this.width,
        this.color,
        this.hintText, this.onChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(15))
        ),
        child:TextFormField(
          onChanged: (value){
            onChange!(value);
            if(value.length==1){
              FocusScope.of(context).nextFocus();
            }
          },
          cursorColor: const Color(0xff333333),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor:Colors.black38,
            labelStyle: const TextStyle(color: Color(0xff333333)
            ),
            hintText: hintText,
            contentPadding: const EdgeInsets.all(20),
            hintStyle: const TextStyle(color: Color(0xffBDBDBD)
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black38),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black38),
            ),
          ),
        )
    );
  }
}
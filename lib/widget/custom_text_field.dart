import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double height;
  final double width;
  final String labelText;
  final Color? color;
  final IconData? suffixIcon;
  final bool obsureText;
  final dynamic margin;
  final Function? onChange;

  const CustomTextField(
      {Key? key,
        required this.height,
        required this.width,
        required this.labelText,
        this.suffixIcon,
        this.color, required this.obsureText, this.margin, this.onChange,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:margin,
      height: height,
      color: color,
      child:  TextFormField(
        onChanged: (value){
          onChange!(value);
        },
        decoration: InputDecoration(
          suffixIcon: suffixIcon == null ? null : GestureDetector(child: Container(
            margin: EdgeInsets.all(10),
            child: Icon(suffixIcon,size: 25,),
          ),),
            focusedBorder:OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(7.0),
            ),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.grey),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
        ),
        obscureText: obsureText,
      ),
    );
  }
}
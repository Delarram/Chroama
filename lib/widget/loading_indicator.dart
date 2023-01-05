import 'package:flutter/material.dart';
import 'package:untitled/widget/custom_text.dart';


void showLoadingIndicator(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: Column(
      children: [
        CircularProgressIndicator(
        ),
        Container(
            margin: const EdgeInsets.only(left: 9),
            child: CustomTextView(text: "Please wait",)),
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
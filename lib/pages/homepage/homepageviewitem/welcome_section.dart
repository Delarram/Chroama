import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widget/custom_text.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15,horizontal:15),
      decoration: BoxDecoration(
          color: Colors.cyan,

      ),
      height: 80.h,width: double.infinity,
      child:Center(child: CustomTextView(text: "Hello, Welcome From Poudel's class",fontColor: Colors.white,fontWeight: FontWeight.w600,fontSize: 30,textAlign: TextAlign.center,)),
    );
  }
}

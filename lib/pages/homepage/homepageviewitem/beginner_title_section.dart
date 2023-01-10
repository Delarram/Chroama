import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widget/custom_text.dart';

class BeginnerTitleSection extends StatelessWidget {
  const BeginnerTitleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextView(text: "Beginner course ",fontWeight: FontWeight.w500,fontSize: 20.sp,fontColor: Colors.black45,),
          CustomTextView(text: "All",fontWeight: FontWeight.w500,fontSize: 14.sp,fontColor: Colors.black45)
        ],
      ),
    );
  }
}

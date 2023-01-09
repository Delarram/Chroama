import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/widget/custom_text.dart';

class StatusBarSection extends StatelessWidget {
  const StatusBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 20.h),
      decoration:const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xffCA76FB),
                Color(0xff789AFB),
                Color(0xff46FBF0),
              ]
          )
      ),
      child: Column(
        children: [
          Row(children: [
            Icon(Icons.arrow_back_ios_new,color: Colors.white,),SizedBox(width: 100.w,),
            CustomTextView(text: "Home",fontColor: Colors.white,),
          ],
          ),
          Row(children: [
            Container(height: 60.w,width: 60.w,decoration: BoxDecoration(
              shape: BoxShape.circle,color: Colors.white
            ),
            ),

          ],
          )
        ],
      ),
    );
  }
}

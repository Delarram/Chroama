import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/widget/custom_text.dart';

class StatusBarSection extends StatelessWidget {
  const StatusBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff64243c),
            Color(0xffaa4f6a),
            Color(0xffaa4f6a),
            Color(0xff64243c),
        // Color(0xffCA76FB),
        // Color(0xff789AFB),
        // Color(0xff46FBF0),
      ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60.w,
                  width: 60.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  height: 30.h,
                  child: Center(
                      child: CustomTextView(
                    text: "Beginner Course",
                  )),
                ),
              ],
            ),
          ),
          CustomTextView(
            text: "English Course",
            fontColor: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20.sp,
          ),
          SizedBox(height: 15.h,),
          Row(children: [
            CustomTextView(text: "5 Chapter",fontColor: Colors.grey.shade300,),SizedBox(width: 50.w,),
            CustomTextView(text: "Total 60:00",fontColor: Colors.grey.shade300,)
          ],),
        ],
      ),
    );
  }
}

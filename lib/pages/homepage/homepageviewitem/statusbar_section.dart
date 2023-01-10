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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xffCA76FB),
        Color(0xff789AFB),
        Color(0xff46FBF0),
      ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
              SizedBox(
                width: 100.w,
              ),
              CustomTextView(
                text: "Home",
                fontColor: Colors.white,
              ),
            ],
          ),
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
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 300,
                  child: ListView.separated(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10,),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft:Radius.circular(12)),
                                child: CachedNetworkImage(
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.fill,
                                  imageUrl: "https://images.squarespace-cdn.com/content/v1/5a0d6e5dcd39c35d0c651639/1561378813145-POA9V823FOBYVV7RPH4K/5+Beginner+ESL+Lesson+Plans+You+Need+to+Try?format=500w",
                                  errorWidget: (
                                      context,
                                      url,
                                      error,
                                      ) => const Icon(Icons.error), progressIndicatorBuilder: (context, url, downloadProgress,) =>
                                    Center(
                                      child: CircularProgressIndicator(
                                          value: downloadProgress.progress),
                                    ),
                                )),SizedBox(height: 5,),
                            CustomTextView(
                              text: "Beginner Cource",
                              fontColor: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            CustomTextView(text: "testing")
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

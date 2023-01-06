import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/pages/homepage/homepageviewitem/welcome_section.dart';
import 'package:untitled/widget/custom_text.dart';
import 'homepageviewitem/appbar_section.dart';
import 'homepageviewitem/statusbar_section.dart';
import 'package:cached_network_image/cached_network_image.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           StatusBarSection(),
            AppbarSection(),
            WelcomeSection(),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CustomTextView(text: "Beginner Course",fontSize: 24.sp,fontWeight: FontWeight.w500,),
                 CustomTextView(text: "See all",fontSize: 14.sp,fontWeight: FontWeight.w500,fontColor: Colors.grey.shade600,),
               ],
             ),
           ),
            SizedBox(
              height: 300,
              child: ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10,),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(15),
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
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/pages/homepage/homepageviewitem/beginner_title_section.dart';
import 'package:untitled/widget/custom_button.dart';
import 'package:untitled/widget/custom_text.dart';
import 'homepageviewitem/statusbar_section.dart';
import 'package:cached_network_image/cached_network_image.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                const StatusBarSection(),
                Positioned(
                  bottom: -200,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 300,
                    child: ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      padding: EdgeInsets.only(left: 12),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10,),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: CachedNetworkImage(
                                      height: 200,
                                      width: 250,
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
                                    )),
                              ),SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: CustomTextView(
                                  text: "Beginner Cource",
                                  fontColor: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: CustomTextView(text: "testing"),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 210,),
          BeginnerTitleSection(),
            SizedBox(height: 10,),
            SizedBox(height: 200,width: double.infinity,
            child:  ListView.separated(
              itemCount: 5,
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 12),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10,),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 30),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: CachedNetworkImage(
                                  height: 100,
                                  width: 100,
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
                                )),
                          ),SizedBox(height: 10,),
                          Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12,top: 50),
                              child: CustomTextView(
                                text: "Beginner Cource",
                                fontColor: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: CustomTextView(text: "testing"),
                            )
                          ],)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomButton(width: double.infinity, text: "view more", height: 40, nextPage: (){},
                        ),
                      )
                    ],
                  ),
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

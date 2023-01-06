import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widget/custom_text.dart';

class AppbarSection extends StatelessWidget {
  const AppbarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return AppBar(
      toolbarHeight: kToolbarHeight + 10,
      centerTitle: false,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      leadingWidth: 160.w
     ,
      leading: Container(
        padding: const EdgeInsets.only(left: 24.0,),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const CircleAvatar(
              radius: 20,
              foregroundColor: Colors.amber,
            ),SizedBox(width: 7,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               CustomTextView(
                 text: "Delarram",
                 fontColor: Colors.black,
                 fontSize: 14,
                 fontWeight: FontWeight.w500,
               ),SizedBox(height: 7,),
               CustomTextView(
                 text: "Delarram",
                 fontColor: Colors.black,
                 fontSize: 12,
                 fontWeight: FontWeight.w500,
               ),
             ],
           )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12.0,bottom: 30),
          child: IconButton(onPressed: (){},icon: Icon(Icons.info,color: Color(0xffCA76FB),size: 25.sp,),),
        ),
      ],
    );
    // return SizedBox(
    //     height: 40.h,
    //     width: double.infinity,
    //     child: Row(
    //       children: [
    //         Container(
    //           padding: EdgeInsets.all(5),
    //           margin: EdgeInsets.all(5),
    //           decoration: BoxDecoration(
    //               color: Colors.blue, borderRadius: BorderRadius.circular(30)),
    //           child: const CustomTextView(
    //             text: "Logo",
    //             fontSize: 24,
    //             fontColor: Colors.white,
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 7,
    //         ),
    //         const CustomTextView(
    //           text: "Logo Name",
    //           fontSize: 14,
    //         ),
    //         const Spacer(),
    //         IconButton(
    //             onPressed: () {},
    //             icon:  Icon(
    //               Icons.info,
    //               color: Color(0xffCA76FB),size: 25.sp,
    //             ))
    //       ],
    //     ));
  }
}

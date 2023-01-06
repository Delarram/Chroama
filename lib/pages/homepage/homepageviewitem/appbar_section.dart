import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widget/custom_text.dart';

class AppbarSection extends StatelessWidget {
  const AppbarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40.h,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              child: const CustomTextView(
                text: "Logo",
                fontSize: 24,
                fontColor: Colors.white,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            const CustomTextView(
              text: "Logo Name",
              fontSize: 14,
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon:  Icon(
                  Icons.info,
                  color: Color(0xffCA76FB),size: 25.sp,
                ))
          ],
        ));
  }
}

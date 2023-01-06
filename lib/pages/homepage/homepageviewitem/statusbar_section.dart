import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusBarSection extends StatelessWidget {
  const StatusBarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      decoration:const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xffCA76FB),
                Color(0xff789AFB),
                Color(0xff46FBF0),
              ]
          )
      ),
    );
  }
}

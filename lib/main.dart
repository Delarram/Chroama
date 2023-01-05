

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/pages/googlesignin/google_sign_in.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return
          const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: GoogleSignInSecond()
           );
      },
    );
  }
}


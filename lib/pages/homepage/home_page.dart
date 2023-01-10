import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/widget/custom_text.dart';
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
            const StatusBarSection(),
          ],
        ),
      ),
    );
  }
}

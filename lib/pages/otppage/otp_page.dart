
import 'package:flutter/material.dart';

import '../../const/image_const.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key, required this.phoneNumber, this.isFromForgetPassword}) : super(key: key);

  final String phoneNumber;
  final bool? isFromForgetPassword;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    expandedHeight: MediaQuery.of(context).size.height * 0.32,
                    floating: false,
                    backgroundColor: Colors.transparent,
                    pinned: true,
                    flexibleSpace: Stack(
                      children: [
                         Positioned.fill(
                          child: FadeInImage(
                            image: AssetImage(iChildren),
                            placeholder: const AssetImage(
                                "assets/images/splashthree.png"
                            ),

                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: -7,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 33,
                            decoration:  const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(40),
                                ),
                                ),
                          ),
                        )
                      ],
                    )),
              ];
            },
            body: Container(
                decoration:  const BoxDecoration(
                  // color: Color(0xffF0F8FF),
                  image: DecorationImage(
                      image: AssetImage(iChildren)),
                ),

            ),
          ),
        )
      ],
    );
  }
}

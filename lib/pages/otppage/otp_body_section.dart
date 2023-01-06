import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../../widget/loading_indicator.dart';
import 'custom_otp_textfield.dart';

class OtpBodySection extends StatelessWidget {
  const OtpBodySection({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.only(top: 25),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextView(
                text: "OTP Code ရိုက်ထည့်ပါ",
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: CustomOtpTextField(
                        onChange: (value) {
                          print("value==${value}");
                          // bloc.onChangeFirstOTP(value);
                        },
                        height: 39,
                        width: double.infinity,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: CustomOtpTextField(
                        onChange: (value) {
                          // bloc.onChangeSecondOTP(value);
                        },
                        height: 39,
                        width: double.infinity,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: CustomOtpTextField(
                        onChange: (value) {
                          // bloc.onChangeThridOTP(value);
                        },
                        height: 39,
                        width: double.infinity,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: CustomOtpTextField(
                        height: 39,
                        onChange: (value) {
                          // bloc.onChangeFourthOTP(value);
                        },
                        width: double.infinity,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                  width: double.infinity,
                  height: 45,
                  text: "Check",
                   nextPage: () {
                     showLoadingIndicator(context);
                   },),
            ],
          ),
        ),
      ),
    );
  }
}

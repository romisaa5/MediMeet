import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medimeet/Features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:medimeet/Features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:medimeet/core/Routing/routes.dart';
import 'package:medimeet/core/Widgets/custom_button.dart';
import 'package:medimeet/core/Themes/styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              spacing: 30.h,
              children: [
                DocLogoAndName(),
                DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    spacing: 30.h,
                    crossAxisAlignment: CrossAxisAlignment.center,
              
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13GreyReguler,
                        textAlign: TextAlign.center,
                      ),
                      CustomButton(
                        text: 'Get Started',
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.loginScreen);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

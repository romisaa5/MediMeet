import 'package:doc_doc/core/common/widgets/custom_button.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/features/onboarding/presentation/widgets/doc_logo_and_name.dart';
import 'package:doc_doc/features/onboarding/presentation/widgets/doctor_image_and_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                        style: AppTextStyles.font14Regular,
                        textAlign: TextAlign.center,
                      ),
                      CustomButton(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.login);
                        },
                        text: 'Get Started',
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

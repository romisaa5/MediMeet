import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medimeet/core/Routing/app_router.dart';
import 'package:medimeet/core/Routing/routes.dart';
import 'package:medimeet/core/Themes/colors.dart';
import 'package:medimeet/core/Themes/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 52.h),
          backgroundColor: ColorsManager.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      onPressed: () {
        Navigator.pushNamed(context, Routes.loginScreen);
      },
      child: Text('Get Started', style: TextStyles.font16WhiteSemibold),
    );
  }
}

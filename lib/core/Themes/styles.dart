import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:medimeet/core/Themes/colors.dart';
import 'package:medimeet/core/Themes/font_weight_halper.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeight.bold,
  );
    static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font13GreyReguler = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.grey,
    fontWeight: FontWeight.normal,
  );
  static TextStyle font14GreyReguler = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.grey,
    fontWeight: FontWeightHelper.regular,
  );
    static TextStyle font14LightGreyReguler = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.lightGrey,
    fontWeight: FontWeightHelper.regular,
  );
   static TextStyle font14DarkblueMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
   static TextStyle font13DarkblueMedium = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font16WhiteSemibold = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );
}

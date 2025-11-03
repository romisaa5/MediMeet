import 'package:doc_doc/core/common/widgets/custom_button.dart';
import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:doc_doc/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBlueContainer extends StatelessWidget {
  const CustomBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 165.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: DecorationImage(
                image: AssetImage(AppImages.backgroundContainer),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book and \nschedule with \nnearest doctor',
                    style: AppTextStyles.font18SemiBold.copyWith(
                      color: context.customAppColors.grey0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  16.h.ph,
                  Expanded(
                    child: CustomButton(
                      height: 38.h,
                      style: AppTextStyles.font12Regular.copyWith(
                        color: context.customAppColors.primary800,
                      ),
                      border: 48.r,
                      text: 'Find Nearby',
                      color: context.customAppColors.grey0,
                      width: 110.w,
                    ),
                  ),
                  3.h.ph,
                ],
              ),
            ),
          ),
          Positioned(
            top: -45,
            right: -55,
            child: Image.asset(AppImages.doctor, height: 210.h),
          ),
        ],
      ),
    );
  }
}

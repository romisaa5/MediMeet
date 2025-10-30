import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/core/utils/app_icons.dart';
import 'package:doc_doc/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(AppIcons.logoOpacity, width: 443.w, height: 443.h),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),

            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Image.asset(
            AppImages.doctorImage,
            width: 375.w,
            height: 491.h,
          ),
        ),
        Positioned(
          bottom: 5.h,
          child: Text(
            'Best Doctor\n Appointment App',
            style: AppTextStyles.font32SemiBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

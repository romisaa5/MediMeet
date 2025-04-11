import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medimeet/core/Themes/styles.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/medimeet_logo_opacity.svg',
          width: 443.w,
          height: 443.h,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),

            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Image.asset(
            'assets/images/doctor_image.png',
            width: 375.w,
            height: 491.h,
          ),
        ),
        Positioned(
          bottom: 5.h,
          child: Text(
            'Best Doctor\n Appointment App',
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

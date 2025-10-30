import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/core/utils/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10.w,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppIcons.logo, height: 38.h, width: 38.w),
        Text('DocDoc', style: AppTextStyles.font14Bold),
      ],
    );
  }
}

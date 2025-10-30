import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: context.customAppColors.white,
          fillColor: isCheck
              ? WidgetStateProperty.all(context.customAppColors.primary800)
              : WidgetStateProperty.all(context.customAppColors.grey0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
          side: BorderSide(color: context.customAppColors.grey400, width: 1.w),
          value: isCheck,
          onChanged: (_) {
            setState(() {
              isCheck = !isCheck;
            });
          },
        ),
        Text(
          'Remember me',
          style: AppTextStyles.font14Regular.copyWith(
            color: context.customAppColors.grey500,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

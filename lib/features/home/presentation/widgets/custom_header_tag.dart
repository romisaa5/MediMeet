import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeaderTag extends StatelessWidget {
  const CustomHeaderTag({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text('Hi, Omar!', style: AppTextStyles.font18Bold),
      subtitle: Text(
        'How Are you Today?',
        style: AppTextStyles.font12Regular.copyWith(
          color: context.customAppColors.grey700,
        ),
      ),
      trailing: CircleAvatar(
        radius: 28.r,
        backgroundColor: context.customAppColors.grey50,
        child: IconButton(
          iconSize: 60,
          onPressed: () {},
          icon: Badge(child: Icon(Icons.notifications_outlined, size: 24.sp)),
        ),
      ),
    );
  }
}

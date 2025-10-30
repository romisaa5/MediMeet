import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../theme/app_texts/app_text_styles.dart';

class CustomAlertDialog extends StatelessWidget {
  final String dialogHeader;
  final String dialogBody;
  final Color dialogColor;
  final IconData dialogIcon;

  final VoidCallback press;

  const CustomAlertDialog({
    super.key,
    required this.dialogIcon,
    required this.dialogHeader,
    required this.dialogBody,
    required this.dialogColor,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: context.customAppColors.background,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        padding: EdgeInsets.all(20.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: dialogColor.withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(12.r),
              child: Container(
                decoration: BoxDecoration(
                  color: dialogColor.withValues(alpha: 0.6),
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(10.r),
                child: Center(
                  child: Icon(
                    dialogIcon,
                    size: 30.r,
                    color: context.customAppColors.background,
                  ),
                ),
              ),
            ),
            20.h.ph,
            Text(
              dialogHeader,
              style: AppTextStyles.font18Bold.copyWith(
                color: context.customAppColors.grey900,
              ),
            ),
            10.h.ph,
            Text(
              dialogBody,
              textAlign: TextAlign.center,
              style: AppTextStyles.font14Regular.copyWith(
                color: context.customAppColors.grey600,
              ),
            ),
            26.h.ph,
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: press,
                style: TextButton.styleFrom(
                  backgroundColor: dialogColor,
                  padding: EdgeInsets.symmetric(vertical: 14.r),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'OK',
                  style: AppTextStyles.font14Regular.copyWith(
                    color: context.customAppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

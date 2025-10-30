import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By logging, you agree to our',
              style: AppTextStyles.font14Regular.copyWith(
                color: context.customAppColors.grey700,
              ),
            ),
            TextSpan(
              text: ' Terms & Conditions',
              style: AppTextStyles.font14Regular.copyWith(
                color: context.customAppColors.grey900,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: ' and',
              style: AppTextStyles.font14Regular.copyWith(
                color: context.customAppColors.grey700,
              ),
            ),
            TextSpan(
              text: ' Privacy Policy',
              style: AppTextStyles.font14Regular.copyWith(
                color: context.customAppColors.grey900,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

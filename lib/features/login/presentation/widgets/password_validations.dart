import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2.h,
      children: [
        buildValidationRow(
          'At least 1 lowercase letter',
          hasLowerCase,
          context,
        ),
        buildValidationRow(
          'At least 1 uppercase letter',
          hasUpperCase,
          context,
        ),
        buildValidationRow(
          'At least 1 special character',
          hasSpecialCharacters,
          context,
        ),
        buildValidationRow('At least 1 number', hasNumber, context),
        buildValidationRow('At least 8 characters long', hasMinLength, context),
      ],
    );
  }

  Widget buildValidationRow(
    String text,
    bool hasValidated,
    BuildContext context,
  ) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.r,
          backgroundColor: context.customAppColors.grey700,
        ),
        8.w.pw,
        Text(
          text,
          style: AppTextStyles.font14Regular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: context.customAppColors.primary600,
            decorationThickness: 2,
            color: hasValidated
                ? context.customAppColors.grey700
                : context.customAppColors.primary800,
          ),
        ),
      ],
    );
  }
}

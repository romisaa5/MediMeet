import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:flutter/material.dart';

class AccountTextButton extends StatelessWidget {
  final String questionText;
  final String actionText;
  final String route;

  const AccountTextButton({
    super.key,
    required this.questionText,
    required this.actionText,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questionText,
          style: AppTextStyles.font14Regular.copyWith(
            color: context.customAppColors.grey700,
          ),
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(route);
          },
          child: Text(
            actionText,
            style: AppTextStyles.font14Regular.copyWith(
              color: context.customAppColors.primary800,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

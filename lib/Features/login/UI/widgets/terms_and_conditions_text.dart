import 'package:flutter/material.dart';
import 'package:medimeet/core/Themes/styles.dart';



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
              style: TextStyles.font13GreyReguler,
            ),
            TextSpan(
              text: ' Terms & Conditions',
              style: TextStyles.font13DarkblueMedium
            ),
            TextSpan(
              text: '\n and',
              style: TextStyles.font14GreyReguler.copyWith(height: 1.5),
            ),
            TextSpan(
              text: ' Privacy Policy',
             style: TextStyles.font13DarkblueMedium
            ),
          ],
        ),
      ),
    );
  }
}
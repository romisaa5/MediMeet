import 'package:flutter/material.dart';
import 'package:medimeet/Features/login/UI/widgets/text_form_field_for_email.dart';
import 'package:medimeet/Features/login/UI/widgets/text_form_field_for_password.dart';
import 'package:medimeet/core/Routing/routes.dart';
import 'package:medimeet/core/Themes/colors.dart';
import 'package:medimeet/core/Themes/styles.dart';
import 'package:medimeet/core/Widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 60),
            Text('Create Account', style: TextStyles.font32BlueBold),
            Text(
              "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
              style: TextStyles.font14GreyReguler,
            ),
            TextFormFieldForEmail(),
            TextFormFieldForPassword(),
            CustomButton(
              text: 'Create Acount',
              onPressed: () {
                Navigator.pushNamed(context, Routes.homeScreen);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyles.font14GreyReguler.copyWith(
                    fontWeight: FontWeight.w400
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.loginScreen);
                  },
                  child: Text(
                    'Login',
                    style: TextStyles.font14GreyReguler.copyWith(
                      color: ColorsManager.mainBlue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
            //
            // Add your sign-up form fields here
          ],
        ),
      ),
    );
  }
}

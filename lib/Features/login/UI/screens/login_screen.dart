import 'package:flutter/material.dart';
import 'package:medimeet/Features/login/UI/widgets/text_form_field_for_email.dart';
import 'package:medimeet/Features/login/UI/widgets/text_form_field_for_password.dart';
import 'package:medimeet/core/Routing/routes.dart';
import 'package:medimeet/core/Themes/styles.dart';
import 'package:medimeet/core/Widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        SizedBox(height: 50),
           Text(
            'Welcome Back',
            style:  TextStyles.font32BlueBold,
          ),
         
         Text(
            "We're excited to have you back, can't wait to see what you've been up to since you last logged in",
            style: TextStyles.font14GreyReguler,
          ),
          TextFormFieldForEmail(),
          TextFormFieldForPassword(),
          CustomButton(text: 'Login', onPressed: (){
            Navigator.pushNamed(context, Routes.homeScreen);
          })
          
          // Add your login form here
        ],
      ),
    );
  }
}
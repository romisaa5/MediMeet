import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medimeet/Features/login/UI/widgets/text_form_field_for_email.dart';
import 'package:medimeet/Features/login/UI/widgets/text_form_field_for_password.dart';
import 'package:medimeet/core/Routing/routes.dart';
import 'package:medimeet/core/Themes/colors.dart';
import 'package:medimeet/core/Themes/styles.dart';
import 'package:medimeet/core/Widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          SizedBox(height: 60.h),
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
            Row(
              
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.all(ColorsManager.mainBlue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  value: true, onChanged: (_){}),
                Text(
                  'Remember me',
                  style: TextStyles.font13GreyReguler.copyWith(
                    color: ColorsManager.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.forgetPasswordScreen);
                  },
                  child: Text(
                    'Forget Password?',
                    style: TextStyles.font14GreyReguler.copyWith(
                      color: ColorsManager.mainBlue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            CustomButton(text: 'Login', onPressed: (){
              Navigator.pushNamed(context, Routes.homeScreen);
            }),
            
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyles.font13GreyReguler.copyWith(
                    color: ColorsManager.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.registerScreen);
                  },
                  child: Text(
                    'Register',
                    style: TextStyles.font13GreyReguler.copyWith(
                      color: ColorsManager.mainBlue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          
            // Add your login form here
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medimeet/Features/login/UI/widgets/dont_have_account_text.dart';
import 'package:medimeet/Features/login/UI/widgets/remember_me.dart';
import 'package:medimeet/Features/login/UI/widgets/terms_and_conditions_text.dart';
import 'package:medimeet/core/Routing/routes.dart';
import 'package:medimeet/core/Themes/colors.dart';
import 'package:medimeet/core/Themes/styles.dart';
import 'package:medimeet/core/Widgets/app_text_form_field.dart';
import 'package:medimeet/core/Widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObsecuretext = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Text('Welcome Back', style: TextStyles.font24BlueBold),

                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in",
                  style: TextStyles.font14GreyReguler,
                ),

                Form(
                  key: formKey,
                  child: Column(
                    spacing: 20.h,
                    children: [
                      AppTextFormField(
                        hintText: 'Email',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                          if (!emailRegex.hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      AppTextFormField(
                        isObscureText: isObsecuretext,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsecuretext = !isObsecuretext;
                            });
                          },
                          icon: Icon(
                            isObsecuretext
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        hintText: 'password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                          final passwordRegex = RegExp(
                            r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
                          );
                          if (!passwordRegex.hasMatch(value)) {
                            return 'Password must contain at least one letter and one number';
                          }

                          return null;
                        },
                      ),

                      Row(
                        children: [
                          RememberMe(),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                Routes.forgetPasswordScreen,
                              );
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
                      SizedBox(height: 10.h),
                      CustomButton(
                        textStyle: TextStyles.font16WhiteSemibold,
                        buttonText: 'Login',
                        onPressed: () {
                          Navigator.pushNamed(context, Routes.homeScreen);
                        },
                      ),
                      SizedBox(height: 20.h),
                      TermsAndConditionsText(),
                      DontHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

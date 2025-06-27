import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medimeet/Features/login/UI/widgets/dont_have_account_text.dart';
import 'package:medimeet/Features/login/UI/widgets/remember_me.dart';
import 'package:medimeet/Features/login/UI/widgets/terms_and_conditions_text.dart';
import 'package:medimeet/core/Helpers/validation_methods.dart';
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                        controller: emailController,
                        hintText: 'Email',
                        validator: (value) {
                          ValidationMethods.validateEmail(value);
                        },
                      ),
                      AppTextFormField(
                        controller: passwordController,
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
                          ValidationMethods.validatePassword(value);
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
                          if (formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, Routes.homeScreen);
                          }
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

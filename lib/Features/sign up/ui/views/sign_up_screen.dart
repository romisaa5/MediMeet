import 'package:flutter/material.dart';
import 'package:medimeet/core/Helpers/validation_methods.dart';
import 'package:medimeet/core/Routing/routes.dart';
import 'package:medimeet/core/Themes/colors.dart';
import 'package:medimeet/core/Themes/styles.dart';
import 'package:medimeet/core/Widgets/app_text_form_field.dart';
import 'package:medimeet/core/Widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isShownpassword = false;
  bool isShownConfirmPassword = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
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
                AppTextFormField(
                  hintText: 'User Name',
                  validator: (value) {
                    ValidationMethods.validateUsername(value);
                  },
                ),

                AppTextFormField(
                  controller: emailController,
                  hintText: 'Email',
                  validator: (value) {
                    ValidationMethods.validateEmail(value);
                  },
                ),
                AppTextFormField(
                  controller: passwordController,
                  hintText: 'Password',
                  isObscureText: isShownpassword,
                  validator: (value) {
                    ValidationMethods.validatePassword(value);
                  },
                  suffixIcon: IconButton(
                    icon: Icon(
                      isShownpassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isShownpassword = !isShownpassword;
                      });
                    },
                  ),
                ),
                AppTextFormField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  isObscureText: isShownConfirmPassword,
                  validator: (value) {
                    ValidationMethods.validateConfirmPassword(value);
                  },
                  suffixIcon: IconButton(
                    icon: Icon(
                      isShownConfirmPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isShownConfirmPassword = !isShownConfirmPassword;
                      });
                    },
                  ),
                ),
                CustomButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, Routes.homeScreen);
                    }
                  },

                  buttonText: 'Sign Up',
                  textStyle: TextStyles.font16WhiteSemibold,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyles.font14GreyReguler.copyWith(
                        fontWeight: FontWeight.w400,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

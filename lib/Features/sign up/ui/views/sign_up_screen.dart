import 'package:flutter/material.dart';
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
    return Scaffold(
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
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  if (value.length < 3) {
                    return 'Username must be at least 3 characters';
                  }
                  if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
                    return 'Username can only contain letters, numbers, and underscores';
                  }
                  return null;
                },
              ),

              AppTextFormField(
                controller: emailController,
                hintText: 'Email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  ).hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              AppTextFormField(
                controller: passwordController,
                hintText: 'Password',
                isObscureText: isShownpassword,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                  if (!RegExp(
                    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$',
                  ).hasMatch(value)) {
                    return 'Password must contain at least one uppercase letter, one lowercase letter, and one number';
                  }

                  return null;
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
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
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
    );
  }
}

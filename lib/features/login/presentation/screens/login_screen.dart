import 'package:doc_doc/core/common/widgets/custom_button.dart';
import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:doc_doc/core/common/widgets/account_text_button.dart';
import 'package:doc_doc/features/login/presentation/logic/login_cubit/login_cubit.dart';
import 'package:doc_doc/features/login/presentation/widgets/email_and_password.dart';
import 'package:doc_doc/features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:doc_doc/features/login/presentation/widgets/remember_me.dart';
import 'package:doc_doc/features/login/presentation/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                30.h.ph,
                Text(
                  'Welcome Back',
                  style: AppTextStyles.font32Bold.copyWith(
                    color: context.customAppColors.grey900,
                  ),
                ),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in",
                  style: AppTextStyles.font14Regular.copyWith(
                    color: context.customAppColors.grey700,
                  ),
                ),
                Column(
                  spacing: 20.h,
                  children: [
                    EmailAndPassword(),
                    Row(
                      children: [
                        RememberMe(),
                        Spacer(),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.forgetPassword);
                          },
                          child: Text(
                            'Forget Password?',
                            style: AppTextStyles.font14Regular.copyWith(
                              color: context.customAppColors.primary800,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    10.h.ph,
                    CustomButton(
                      text: 'Login',
                      onTap: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    20.h.ph,
                    TermsAndConditionsText(),
                    AccountTextButton(
                      questionText: "Don’t have an account?",
                      actionText: 'Sign Up',
                      route: Routes.signUp,
                    ),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}

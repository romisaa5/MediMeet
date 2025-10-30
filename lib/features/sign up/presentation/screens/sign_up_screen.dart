import 'package:doc_doc/core/common/widgets/custom_button.dart';
import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theme/app_texts/app_text_styles.dart';
import 'package:doc_doc/core/common/widgets/account_text_button.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:doc_doc/features/sign%20up/presentation/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:doc_doc/features/sign%20up/presentation/widgets/sign_up_bloc_listener.dart';
import 'package:doc_doc/features/sign%20up/presentation/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.h),
          child: SingleChildScrollView(
            child: Column(
              spacing: 20.h,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                60.h.ph,
                Text(
                  'Create Account',
                  style: AppTextStyles.font32Bold.copyWith(
                    color: context.customAppColors.grey900,
                  ),
                ),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: AppTextStyles.font14Regular.copyWith(
                    color: context.customAppColors.grey700,
                  ),
                ),
                SignupForm(),
                CustomButton(
                  onTap: () {
                    validateThenDoSignup(context);
                  },
                  text: 'Sign Up',
                ),
                AccountTextButton(
                  questionText: 'Already have an account?',
                  actionText: 'Login',
                  route: Routes.login,
                ),
                SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}

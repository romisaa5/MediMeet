import 'package:doc_doc/core/common/widgets/custom_dialog.dart';
import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:doc_doc/features/sign%20up/presentation/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:doc_doc/features/sign%20up/presentation/logic/sign_up_cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routing/routes.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => Center(
                child: CircularProgressIndicator(
                  color: context.customAppColors.primary800,
                ),
              ),
            );
          },
          signupSuccess: (signupResponse) {
            context.pop();
            showDialog(
              context: context,
              builder: (context) => CustomAlertDialog(
                dialogIcon: Icons.check_circle_outline,
                dialogHeader: 'Success',
                dialogBody: 'Your account has been created successfully!',
                dialogColor: context.customAppColors.primary800,
                press: () {
                  Navigator.of(context, rootNavigator: true).pop();
                  Navigator.of(
                    context,
                    rootNavigator: true,
                  ).pushReplacementNamed(Routes.navbar);
                },
              ),
            );
          },
          signupError: (error) {
            context.pop();
            showDialog(
              context: context,
              builder: (context) => CustomAlertDialog(
                dialogIcon: Icons.error_outline,
                dialogHeader: 'Error',
                dialogBody: error,
                dialogColor: context.customAppColors.error500,
                press: () {
                  context.pop();
                },
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

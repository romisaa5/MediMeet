import 'package:doc_doc/core/common/widgets/custom_dialog.dart';
import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/theme/theme_manager/theme_extensions.dart';
import 'package:doc_doc/features/login/presentation/logic/login_cubit/login_cubit.dart';
import 'package:doc_doc/features/login/presentation/logic/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routing/routes.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child: CircularProgressIndicator(
                  color: context.customAppColors.primary800,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.navbar);
          },
          error: (error) {
            showDialog(
              context: context,
              builder: (context) => CustomAlertDialog(
                dialogIcon: Icons.error,
                dialogHeader: 'Error',
                dialogBody: error,
                dialogColor: context.customAppColors.primary800,
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

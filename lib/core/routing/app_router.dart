import 'package:doc_doc/core/di/dependency_injection.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/features/home/presentation/screens/home_screen.dart';
import 'package:doc_doc/features/login/presentation/logic/login_cubit/login_cubit.dart';
import 'package:doc_doc/features/login/presentation/screens/login_screen.dart';
import 'package:doc_doc/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:doc_doc/features/sign%20up/presentation/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:doc_doc/features/sign%20up/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: SignUpScreen(),
          ),
        );
      case Routes.navbar:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

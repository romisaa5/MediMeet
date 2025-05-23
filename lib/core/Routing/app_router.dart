import 'package:flutter/material.dart';
import 'package:medimeet/Features/home/UI/screens/home_screen.dart';
import 'package:medimeet/Features/login/UI/screens/login_screen.dart';
import 'package:medimeet/Features/onboarding/screens/onboarding_screen.dart';
import 'package:medimeet/Features/sign%20up/ui/views/sign_up_screen.dart';
import 'package:medimeet/core/Routing/routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}

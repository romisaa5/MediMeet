import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medimeet/core/Routing/app_router.dart';
import 'package:medimeet/core/Routing/routes.dart';
import 'package:medimeet/core/Themes/colors.dart';

class MedimeetApp extends StatelessWidget {
  const MedimeetApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Medimeet',
          theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'Poppins',
          ),
          initialRoute: Routes.onboardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        );
      },
    );
  }
}

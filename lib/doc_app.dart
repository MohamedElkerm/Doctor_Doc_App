import 'package:complete_app/core/routing/routes.dart';
import 'package:complete_app/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/router.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key , required this.appRouter});
  final AppRouter appRouter ;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: AppRoutes.onBoardingScreen,
        theme: ThemeData(
          primaryColor: AppColors.primaryColorBlue,
          scaffoldBackgroundColor: Colors.white
        )
      )
    );
  }
}


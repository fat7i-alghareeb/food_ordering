import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';
import 'package:food_ordering/utils/themes.dart';
import 'package:beamer/beamer.dart';

import 'utils/routes/app_router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: context.backgroundColor(),
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(390, 850),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        routeInformationParser: BeamerParser(),
        title: 'Food Ordering',
        theme: lightMode,
        debugShowCheckedModeBanner: false,
        routerDelegate: mainBeamerDelegate,
      ),
    );
  }
}

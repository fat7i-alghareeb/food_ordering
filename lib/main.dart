import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/features/cart/presentation/screens/cart_screen.dart';
import 'package:food_ordering/utils/extensions.dart';
import 'package:food_ordering/utils/themes.dart';

import 'utils/routes/bottom_nav_bar/navigator.dart';

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
    log(context.screenHeight.toString());
    log(context.screenWidth.toString());
    return ScreenUtilInit(
      designSize: const Size(390, 850),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Food Ordering',
        theme: lightMode,
        debugShowCheckedModeBanner: false,
        home: const DashBoardNavigator(),
      ),
    );
  }
}

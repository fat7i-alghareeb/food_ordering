import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_ordering/utils/extensions.dart';
import 'widgets/on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: context.primaryColor(),
      ),
    );
    return Scaffold(
      backgroundColor: context.primaryColor(),
      body: const OnBoardingBody(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_ordering/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:food_ordering/utils/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Ordering',
      theme: lightMode,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}

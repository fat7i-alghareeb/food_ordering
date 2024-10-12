import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_ordering/utils/extensions.dart';
import 'widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: context.backgroundColor(),
      ),
    );
    return const Scaffold(
      body: SafeArea(
        child: HomeBody(),
      ),
    );
  }
}

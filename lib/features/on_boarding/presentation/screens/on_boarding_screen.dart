import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/constants.dart';
import 'package:food_ordering/utils/extensions.dart';
import 'widgets/on_boarding_body.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  final int _totalPages = 3;

  List<Widget> pages = [
    const OnBoardingBody(),
    const OnBoardingBody(),
    const OnBoardingBody(endPage: true),
  ];
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
      body: Stack(
        children: [
          PageView(
            children: pages,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 68.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_totalPages, (index) {
                return Expanded(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    margin: EdgeInsets.symmetric(horizontal: 8.0.w),
                    height: 3.h,
                    decoration: BoxDecoration(
                      color: _currentPage >= index
                          ? context.tertiaryColor()
                          : context.onSecondaryColor(),
                      borderRadius:
                          BorderRadius.circular(Constants.borderRadius),
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}

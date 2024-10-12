import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/assets.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../constants.dart';
import 'nav_icon.dart';

class DashBoardNavigator extends StatefulWidget {
  const DashBoardNavigator({super.key});

  @override
  State<DashBoardNavigator> createState() => _DashBoardNavigatorState();
}

class _DashBoardNavigatorState extends State<DashBoardNavigator> {
  int _selectedIndex = 0;

  void _onItemTapped(int selectedIndex) {
    setState(() {
      _selectedIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: Container(
                height: 72.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Constants.buttonRadius,
                  ),
                  color: context.onBackgroundColor(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavigatorIcon(
                      icon: Assets.home,
                      setChange: () {
                        _onItemTapped(0);
                      },
                      changing: _selectedIndex == 0 ? true : false,
                    ),
                    NavigatorIcon(
                      icon: Assets.heartBold,
                      setChange: () {
                        _onItemTapped(1);
                      },
                      changing: _selectedIndex == 1 ? true : false,
                    ),
                    NavigatorIcon(
                      icon: Assets.cartBold,
                      setChange: () {
                        _onItemTapped(2);
                      },
                      changing: _selectedIndex == 2 ? true : false,
                    ),
                    NavigatorIcon(
                      icon: Assets.profileCircle,
                      setChange: () {
                        _onItemTapped(3);
                      },
                      changing: _selectedIndex == 3 ? true : false,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

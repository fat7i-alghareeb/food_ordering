import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/assets.dart';
import 'package:food_ordering/utils/extensions.dart';
import '../../constants.dart';
import '../app_router.dart';
import '../routers_paths.dart';
import 'nav_icon.dart';

class DashBoardNavigatorScreen extends StatefulWidget {
  const DashBoardNavigatorScreen({super.key});

  @override
  State<DashBoardNavigatorScreen> createState() =>
      _DashBoardNavigatorScreenState();
}

class _DashBoardNavigatorScreenState extends State<DashBoardNavigatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Beamer(
            key: bottomNavigatorBeamerKey,
            routerDelegate: bottomNavigatorBeamerDelegate,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: CustomBottomNavBar(
                beamerKey: bottomNavigatorBeamerKey,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key, required this.beamerKey});
  final GlobalKey<BeamerState> beamerKey;
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void onItemTapped(int selectedIndex) {
    setState(() {
      _selectedIndex = selectedIndex;
      switch (_selectedIndex) {
        case 0:
          bottomNavigatorBeamerKey.currentState!.routerDelegate
              .beamToNamed(RoutesPaths.home);
          break;
        case 1:
          bottomNavigatorBeamerKey.currentState!.routerDelegate
              .beamToNamed(RoutesPaths.favorite);
          break;
        case 2:
          bottomNavigatorBeamerKey.currentState!.routerDelegate
              .beamToNamed(RoutesPaths.cart);
          break;
        case 3:
          bottomNavigatorBeamerKey.currentState!.routerDelegate
              .beamToNamed(RoutesPaths.profile);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
              onItemTapped(0);
            },
            changing: _selectedIndex == 0 ? true : false,
          ),
          NavigatorIcon(
            icon: Assets.heartBold,
            setChange: () {
              onItemTapped(1);
            },
            changing: _selectedIndex == 1 ? true : false,
          ),
          NavigatorIcon(
            icon: Assets.cartBold,
            setChange: () {
              onItemTapped(2);
            },
            changing: _selectedIndex == 2 ? true : false,
          ),
          NavigatorIcon(
            icon: Assets.profileCircle,
            setChange: () {
              onItemTapped(3);
            },
            changing: _selectedIndex == 3 ? true : false,
          ),
        ],
      ),
    );
  }
}

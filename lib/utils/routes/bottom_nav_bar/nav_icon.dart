import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';

class NavigatorIcon extends StatelessWidget {
  final VoidCallback setChange;
  final bool changing;
  final String icon;
  const NavigatorIcon({
    super.key,
    required this.setChange,
    required this.changing,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: setChange,
        child: Container(
          color: Colors.transparent,
          child: Center(
              child: Image.asset(
            icon,
            color:
                changing ? context.tertiaryColor() : context.onSecondaryColor(),
            height: 25.h,
            width: 25.w,
          )),
        ),
      ),
    );
  }
}

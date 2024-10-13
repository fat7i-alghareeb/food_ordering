import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/constants.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.color,
    required this.child,
    required this.onTap,
  });
  final Color color;
  final Widget child;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 64.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Constants.buttonRadius,
            ),
            color: color,
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../utils/app_text_styles.dart';
import 'app_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.image1,
    this.image2,
    required this.title,
    this.padding,
  });
  final String image1;
  final String? image2;
  final String title;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding ?? 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcon(
              icon: Image.asset(
                image1,
                height: 24.h,
                width: 24.w,
              ),
            ),
            Flexible(
              child: Text(
                title,
                style: Styles.w500s20
                    .copyWith(fontSize: context.widthPercentage(5.7).h),
              ),
            ),
            image2 != null
                ? AppIcon(
                    icon: Image.asset(
                      image2!,
                      height: 24.h,
                      width: 24.w,
                    ),
                  )
                : SizedBox(
                    height: 46.h,
                    width: 46.w,
                  )
          ],
        ),
      ),
    );
  }
}

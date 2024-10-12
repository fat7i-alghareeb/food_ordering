import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/spacing.dart';
import 'info_row.dart';

class FoodMainDetails extends StatelessWidget {
  const FoodMainDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            height: 350.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Constants.borderRadius),
              color: context.secondaryColor(),
            ),
            child: Center(
              child: Image.asset(Assets.bigBurger, height: 215.h),
            ),
          ),
          verticalSpace(10),
          const InfoRow(),
        ],
      ),
    );
  }
}

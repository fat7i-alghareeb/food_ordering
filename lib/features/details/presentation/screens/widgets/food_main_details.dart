import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/database/database.dart';
import 'package:food_ordering/utils/extensions.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/spacing.dart';
import 'info_row.dart';

class FoodMainDetails extends StatelessWidget {
  const FoodMainDetails({
    super.key,
    required this.food,
  });
  final Food food;
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
              child: Image.asset(food.image, height: 215.h),
            ),
          ),
          verticalSpace(10),
          InfoRow(
            deliveryTime: food.delivery.toString(),
            reviews: food.review.toString(),
            ratings: food.ratings.toString(),
          ),
        ],
      ),
    );
  }
}

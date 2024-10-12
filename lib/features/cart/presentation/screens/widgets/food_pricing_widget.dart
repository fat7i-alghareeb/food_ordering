import 'package:flutter/material.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';

class FoodPricingWidget extends StatelessWidget {
  const FoodPricingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Image.asset(Assets.promo),
          verticalSpace(48),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Subtotal",
                style: Styles.w500s16.copyWith(
                  color: context.onSecondaryColor(),
                ),
              ),
              Text(
                "\$15.39",
                style: Styles.w500s16.copyWith(
                  color: context.onSecondaryColor(),
                ),
              ),
            ],
          ),
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery fee",
                style: Styles.w500s16.copyWith(
                  color: context.onSecondaryColor(),
                ),
              ),
              Text(
                "Free",
                style: Styles.w500s16.copyWith(
                  color: context.onSecondaryColor(),
                ),
              ),
            ],
          ),
          verticalSpace(16),
          Divider(
            color: context.onSecondaryColor().withOpacity(.5),
            thickness: 1,
          ),
          verticalSpace(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total", style: Styles.w500s17),
              Text("\$15.39", style: Styles.w500s17),
            ],
          ),
        ],
      ),
    );
  }
}

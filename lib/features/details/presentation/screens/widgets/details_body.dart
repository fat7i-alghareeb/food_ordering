import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../../../../shared/widgets/custom_app_bar.dart';
import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/spacing.dart';
import 'food_main_details.dart';
import 'quantity_widget.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: CustomScrollView(
        slivers: [
          sliverVerticalSpace(20),
          const CustomAppBar(
            image1: Assets.arrowLeft,
            title: "Details",
            padding: 0,
          ),
          sliverVerticalSpace(16),
          const FoodMainDetails(),
          sliverVerticalSpace(32),
          const QuantityWidget(),
          sliverVerticalSpace(32),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: Styles.w500s17.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(5),
                Text(
                  Constants.dummyDescription,
                  style: Styles.w400s16.copyWith(
                    color: context.onSecondaryColor(),
                  ),
                ),
              ],
            ),
          ),
          sliverVerticalSpace(100),
        ],
      ),
    );
  }
}

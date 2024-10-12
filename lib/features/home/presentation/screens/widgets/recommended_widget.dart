import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../../../../shared/widgets/food_list_view.dart';
import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/spacing.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    "Recommended",
                    style: Styles.w600s20.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Flexible(
                  child: Text(
                    "View all",
                    style: Styles.w500s16.copyWith(
                      color: context.primaryColor(),
                    ),
                  ),
                )
              ],
            ),
          ),
          verticalSpace(16),
          const FoodListView()
        ],
      ),
    );
  }
}

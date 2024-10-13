import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/database/database.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../../../../shared/widgets/app_button.dart';
import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
    this.endPage,
  });
  final bool? endPage;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(context.heightPercentage(18)),
        Image.asset(
          Assets.onBoarding,
          fit: BoxFit.cover,
          height: context.heightPercentage(40),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            "The best food, delivered right to your home.",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Styles.w600s40.copyWith(
              fontSize: context.heightPercentage(5),
            ),
          ),
        ),
        verticalSpace(40),
        if (endPage != null && endPage == true)
          Flexible(
            child: AppButton(
              onTap: () {
                //final FoodDao foodDao = FoodDao(db);
              },
              color: context.onBackgroundColor(),
              child: Text(
                'Start Ordering',
                style: Styles.w600s17.copyWith(
                  color: context.secondaryColor(),
                ),
              ),
            ),
          )
      ],
    );
  }
}

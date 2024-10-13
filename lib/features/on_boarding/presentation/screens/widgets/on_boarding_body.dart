import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/constants.dart';
import 'package:food_ordering/utils/database/database.dart';
import 'package:food_ordering/utils/extensions.dart';
import 'package:food_ordering/utils/get_it.dart';
import 'package:food_ordering/utils/routes/routers_paths.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../shared/widgets/app_button.dart';
import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({
    super.key,
    this.endPage,
  });
  final bool? endPage;

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  Future<void> _completeOnboarding() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', false);
  }

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
        if (widget.endPage != null && widget.endPage == true)
          Flexible(
            child: AppButton(
              onTap: () async {
                await getIt.get<FoodDao>().deleteAllFoods();
                await getIt.get<CartDao>().deleteAllFoods();

                for (FoodsCompanion item in Constants.foodItems) {
                  await getIt.get<FoodDao>().insertFood(item);
                }
                _completeOnboarding();
                if (context.mounted) {
                  context.beamToNamed(RoutesPaths.home);
                }
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

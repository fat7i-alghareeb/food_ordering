import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/app_text_styles.dart';
import 'package:food_ordering/utils/assets.dart';
import 'package:food_ordering/utils/extensions.dart';
import 'package:food_ordering/utils/spacing.dart';

import '../../../../shared/widgets/app_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: context.primaryColor(),
      ),
    );
    return Scaffold(
      backgroundColor: context.primaryColor(),
      body: Column(
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
          Flexible(
            child: AppButton(
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
      ),
    );
  }
}

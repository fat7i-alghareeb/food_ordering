import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/features/details/presentation/screens/widgets/gradient.dart';
import 'package:food_ordering/shared/widgets/app_button.dart';
import 'package:food_ordering/utils/app_text_styles.dart';
import 'package:food_ordering/utils/extensions.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/spacing.dart';
import 'widgets/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const DetailsBody(),
            const GradientWidget(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: AppButton(
                  onTap: () {},
                  color: context.primaryColor(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.cartOutlined,
                        color: context.tertiaryColor(),
                        height: 24.h,
                      ),
                      horizontalSpace(8),
                      Text(
                        "Add to cart",
                        style: Styles.w600s17.copyWith(
                            color: context.tertiaryColor(),
                            fontSize: context.widthPercentage(4.3).h),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

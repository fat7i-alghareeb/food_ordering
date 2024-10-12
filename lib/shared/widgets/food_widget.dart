import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../utils/app_text_styles.dart';
import '../../utils/assets.dart';
import '../../utils/constants.dart';
import '../../utils/spacing.dart';
import 'app_icon.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({
    super.key,
    required this.onTap,
  });
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 318.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constants.borderRadius),
          color: context.tertiaryColor(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Row(
            children: [
              Container(
                height: 150.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Constants.borderRadius),
                  color: context.secondaryColor(),
                ),
                child: Center(
                  child: Image.asset(
                    Assets.bigBurger,
                  ),
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cheese burgers",
                      style: Styles.w500s20
                          .copyWith(fontSize: context.widthPercentage(5.3).h),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$8.09",
                          style: Styles.w500s20.copyWith(
                              fontSize: context.widthPercentage(5.3).h),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.amber,
                              size: 15.dg,
                            ),
                            Text(
                              "4.2",
                              style: Styles.w500s17.copyWith(
                                color: context.secondaryColor(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    verticalSpace(28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppIcon(
                          icon: Image.asset(
                            Assets.heartOutlined,
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                        horizontalSpace(12),
                        AppIcon(
                          color: context.primaryColor(),
                          icon: Image.asset(
                            Assets.cartOutlined,
                            color: context.tertiaryColor(),
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

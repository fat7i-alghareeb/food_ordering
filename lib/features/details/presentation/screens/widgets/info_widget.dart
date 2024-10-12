import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/app_text_styles.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../../../../utils/spacing.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.infoName,
    required this.infoDetails,
    required this.infoIcon,
  });
  final String infoName;
  final String infoDetails;
  final IconData infoIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Row(
            children: [
              Icon(
                infoIcon,
                color: context.onSecondaryColor().withOpacity(.5),
                size: context.widthPercentage(5.71).h,
              ),
              horizontalSpace(context.widthPercentage(1.42).h),
              Text(
                infoDetails,
                style: Styles.w400s16
                    .copyWith(fontSize: context.widthPercentage(4.3).h),
              ),
            ],
          ),
        ),
        verticalSpace(10),
        Flexible(
          child: Text(
            infoName,
            style: Styles.w400s16.copyWith(
              fontSize: context.widthPercentage(3.8).h,
              color: context.onSecondaryColor(),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../../../../utils/constants.dart';
import 'info_widget.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Constants.borderRadius),
        color: context.secondaryColor(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const InfoWidget(
              infoIcon: Icons.access_time,
              infoName: "Delivery",
              infoDetails: "15mins",
            ),
            VerticalDivider(
              color: context.onSecondaryColor().withOpacity(.5),
              thickness: 1,
            ),
            const InfoWidget(
              infoIcon: Icons.chat_bubble_outline,
              infoName: "Review",
              infoDetails: "32+",
            ),
            VerticalDivider(
              color: context.onSecondaryColor().withOpacity(.5),
              thickness: 1,
            ),
            const InfoWidget(
              infoIcon: Icons.star_border_rounded,
              infoName: "Ratings",
              infoDetails: "4.2",
            ),
          ],
        ),
      ),
    );
  }
}

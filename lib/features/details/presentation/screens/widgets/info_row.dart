import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../../../../utils/constants.dart';
import 'info_widget.dart';

class InfoRow extends StatelessWidget {
  const InfoRow(
      {super.key,
      required this.deliveryTime,
      required this.reviews,
      required this.ratings});
  final String deliveryTime;
  final String reviews;
  final String ratings;
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
            InfoWidget(
              infoIcon: Icons.access_time,
              infoName: "Delivery",
              infoDetails: "$deliveryTime mins",
            ),
            VerticalDivider(
              color: context.onSecondaryColor().withOpacity(.5),
              thickness: 1,
            ),
            InfoWidget(
              infoIcon: Icons.chat_bubble_outline,
              infoName: "Review",
              infoDetails: "$reviews+",
            ),
            VerticalDivider(
              color: context.onSecondaryColor().withOpacity(.5),
              thickness: 1,
            ),
            InfoWidget(
              infoIcon: Icons.star_border_rounded,
              infoName: "Ratings",
              infoDetails: ratings,
            ),
          ],
        ),
      ),
    );
  }
}

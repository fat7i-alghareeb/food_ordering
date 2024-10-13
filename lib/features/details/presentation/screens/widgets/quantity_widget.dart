import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/constants.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({
    super.key,
    required this.name,
    required this.price,
  });
  final String name;
  final String price;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Styles.w500s24),
              Text(
                "\$$price",
                style: Styles.w500s24.copyWith(color: context.primaryColor()),
              ),
            ],
          ),
          Flexible(
            child: Container(
              width: 120.w,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Constants.buttonRadius),
                border: Border.all(
                  color: context.secondaryColor(),
                  width: 2.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.remove,
                    size: 20.w,
                  ),
                  Text(
                    "1",
                    style: Styles.w400s20,
                  ),
                  Icon(
                    Icons.add,
                    size: 20.w,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

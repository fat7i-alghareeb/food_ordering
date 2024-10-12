import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/routes/routers_paths.dart';
import 'food_widget.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 196.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.w),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: FoodWidget(
            onTap: () =>
                Beamer.of(context, root: true).beamToNamed(RoutesPaths.details),
          ),
        ),
      ),
    );
  }
}

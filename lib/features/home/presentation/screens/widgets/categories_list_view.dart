import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 88.h,
        child: ListView.builder(
          padding: const EdgeInsets.only(left: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60.h,
                  width: 60.w,
                  child: CircleAvatar(
                    backgroundColor: context.secondaryColor(),
                    child: Image.asset(
                      Assets.all,
                      height: 35.h,
                    ),
                  ),
                ),
                verticalSpace(4),
                Flexible(
                  child: SizedBox(
                    width: 60.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      "All",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.w500s16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

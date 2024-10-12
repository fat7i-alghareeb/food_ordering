import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Image.asset(Assets.adBanner),
            verticalSpace(32),
            Image.asset(Assets.search),
          ],
        ),
      ),
    );
  }
}

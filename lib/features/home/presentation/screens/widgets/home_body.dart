import 'package:flutter/material.dart';

import '../../../../../shared/widgets/custom_app_bar.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';
import 'categories_list_view.dart';
import 'home_header.dart';
import 'recommended_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        sliverVerticalSpace(20),
        const CustomAppBar(
          image1: Assets.menu,
          title: "Aleppo",
          image2: Assets.notification,
        ),
        sliverVerticalSpace(24),
        const HomeHeader(),
        sliverVerticalSpace(24),
        const CategoriesListView(),
        sliverVerticalSpace(40),
        const RecommendedWidget(),
        sliverVerticalSpace(200)
      ],
    );
  }
}

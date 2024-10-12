import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/app_text_styles.dart';
import 'package:food_ordering/utils/assets.dart';
import 'package:food_ordering/utils/constants.dart';
import 'package:food_ordering/utils/extensions.dart';
import 'package:food_ordering/utils/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: context.backgroundColor(),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
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
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            "Recommended",
                            style: Styles.w600s20
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Flexible(
                          child: Text(
                            "View all",
                            style: Styles.w500s16.copyWith(
                              color: context.primaryColor(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  verticalSpace(16),
                  SizedBox(
                    height: 196.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 20.w),
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 318.w,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Constants.borderRadius),
                            color: context.tertiaryColor(),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: Row(
                              children: [
                                Container(
                                  height: 150.h,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Constants.borderRadius),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cheese burgers",
                                        style: Styles.w500s20,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      verticalSpace(8),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "\$8.09",
                                            style: Styles.w500s20,
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
                                                  color:
                                                      context.secondaryColor(),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      verticalSpace(28),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                            icon: Image.asset(
                                              Assets.cartOutlined,
                                              color:
                                                  context.onBackgroundColor(),
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
                      ),
                    ),
                  )
                ],
              ),
            ),
            sliverVerticalSpace(100)
          ],
        ),
      ),
    );
  }
}

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

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.image1,
    this.image2,
    required this.title,
  });
  final String image1;
  final String? image2;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcon(
              icon: Image.asset(
                image1,
                height: 24.h,
                width: 24.w,
              ),
            ),
            Flexible(
              child: Text(
                title,
                style: Styles.w500s20,
              ),
            ),
            image2 != null
                ? AppIcon(
                    icon: Image.asset(
                      image2!,
                      height: 24.h,
                      width: 24.w,
                    ),
                  )
                : SizedBox(
                    height: 46.h,
                    width: 46.w,
                  )
          ],
        ),
      ),
    );
  }
}

class AppIcon extends StatelessWidget {
  final Widget icon;

  const AppIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: context.secondaryColor(),
          width: 2.0,
        ),
      ),
      child: Center(
        child: icon,
      ),
    );
  }
}

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

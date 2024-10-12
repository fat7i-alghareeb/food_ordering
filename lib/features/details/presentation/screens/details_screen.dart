import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/features/details/presentation/screens/widgets/gradient.dart';
import 'package:food_ordering/shared/widgets/app_button.dart';
import 'package:food_ordering/utils/app_text_styles.dart';
import 'package:food_ordering/utils/extensions.dart';
import '../../../../shared/widgets/custom_app_bar.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/constants.dart';
import '../../../../utils/spacing.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const DetailsBody(),
            const GradientWidget(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: AppButton(
                  color: context.primaryColor(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.cartOutlined,
                        color: context.tertiaryColor(),
                        height: 24.h,
                      ),
                      horizontalSpace(8),
                      Text(
                        "Add to cart",
                        style: Styles.w600s17.copyWith(
                            color: context.tertiaryColor(),
                            fontSize: context.widthPercentage(4.3).h),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: CustomScrollView(
        slivers: [
          sliverVerticalSpace(20),
          const CustomAppBar(
            image1: Assets.arrowLeft,
            title: "Details",
            padding: 0,
          ),
          sliverVerticalSpace(16),
          const FoodMainDetails(),
          sliverVerticalSpace(32),
          const QuantityWidget(),
          sliverVerticalSpace(32),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: Styles.w500s17.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(5),
                Text(
                  Constants.dummyDescription,
                  style: Styles.w400s16.copyWith(
                    color: context.onSecondaryColor(),
                  ),
                ),
              ],
            ),
          ),
          sliverVerticalSpace(100),
        ],
      ),
    );
  }
}

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Cheese burgers", style: Styles.w500s24),
              Text(
                "\$8.09",
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

class FoodMainDetails extends StatelessWidget {
  const FoodMainDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
            height: 350.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Constants.borderRadius),
              color: context.secondaryColor(),
            ),
            child: Center(
              child: Image.asset(Assets.bigBurger, height: 215.h),
            ),
          ),
          verticalSpace(10),
          const InfoRow(),
        ],
      ),
    );
  }
}

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

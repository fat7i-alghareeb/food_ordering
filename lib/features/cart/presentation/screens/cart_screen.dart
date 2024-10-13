import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/shared/widgets/custom_app_bar.dart';
import 'package:food_ordering/utils/assets.dart';
import '../../../../utils/spacing.dart';
import '../../../details/presentation/screens/widgets/cart_item_widget.dart';
import 'widgets/food_pricing_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: CustomScrollView(
            slivers: [
              sliverVerticalSpace(20),
              const CustomAppBar(
                image1: Assets.arrowLeft,
                title: "cart",
                padding: 0,
              ),
              sliverVerticalSpace(16),
              const CartItemsWidget(),
              sliverVerticalSpace(24),
              const FoodPricingWidget(),
              sliverVerticalSpace(100),
            ],
          ),
        ),
      ),
    );
  }
}

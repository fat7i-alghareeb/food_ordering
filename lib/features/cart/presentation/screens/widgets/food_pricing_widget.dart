import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_ordering/utils/extensions.dart';
import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/assets.dart';
import '../../../../../utils/spacing.dart';
import '../../manger/cubit/cart_cubit.dart';
import '../../manger/cubit/cart_state.dart';

class FoodPricingWidget extends StatefulWidget {
  const FoodPricingWidget({
    super.key,
  });

  @override
  State<FoodPricingWidget> createState() => _FoodPricingWidgetState();
}

class _FoodPricingWidgetState extends State<FoodPricingWidget> {
  double totalPrice = 0.0;

  @override
  void initState() {
    super.initState();
    totalPrice = context.read<CartCubit>().calculateTotalPrice();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocConsumer<CartCubit, CartState>(
        listener: (context, state) {
          if (state is CartLoaded) {
            totalPrice = context.read<CartCubit>().calculateTotalPrice();
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              Image.asset(Assets.promo),
              verticalSpace(48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: Styles.w500s16.copyWith(
                      color: context.onSecondaryColor(),
                    ),
                  ),
                  Text(
                    "\$${totalPrice.toStringAsFixed(2)}",
                    style: Styles.w500s16.copyWith(
                      color: context.onSecondaryColor(),
                    ),
                  ),
                ],
              ),
              verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery fee",
                    style: Styles.w500s16.copyWith(
                      color: context.onSecondaryColor(),
                    ),
                  ),
                  Text(
                    "Free",
                    style: Styles.w500s16.copyWith(
                      color: context.onSecondaryColor(),
                    ),
                  ),
                ],
              ),
              verticalSpace(16),
              Divider(
                color: context.onSecondaryColor().withOpacity(.5),
                thickness: 1,
              ),
              verticalSpace(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: Styles.w500s17),
                  Text(
                    "\$${totalPrice.toStringAsFixed(2)}",
                    style: Styles.w500s17,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

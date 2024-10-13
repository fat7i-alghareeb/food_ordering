import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/features/home/presentation/manger/cubit/home_cubit.dart';
import 'package:food_ordering/utils/database/database.dart';
import 'package:food_ordering/utils/extensions.dart';

import '../../utils/app_text_styles.dart';
import '../../utils/assets.dart';
import '../../utils/constants.dart';
import '../../utils/spacing.dart';
import 'app_icon.dart';

class FoodWidget extends StatefulWidget {
  const FoodWidget({
    super.key,
    required this.onTap,
    required this.food,
  });
  final Function() onTap;
  final Food food;

  @override
  State<FoodWidget> createState() => _FoodWidgetState();
}

class _FoodWidgetState extends State<FoodWidget> {
  late bool isInCart;

  @override
  void initState() {
    super.initState();
    isInCart = widget.food.cart > 0;
  }

  Future<void> addOrRemoveFromCart() async {
    if (isInCart) {
      await context.read<HomeCubit>().removeFoodFromCart(widget.food.id);
    } else {
      await context.read<HomeCubit>().addFoodToCart(widget.food.id, 1);
    }

    setState(() {
      isInCart = !isInCart;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 318.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constants.borderRadius),
          color: context.tertiaryColor(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Row(
            children: [
              Container(
                height: 150.h,
                width: 120.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Constants.borderRadius),
                  color: context.secondaryColor(),
                ),
                child: Center(
                  child: Image.asset(
                    widget.food.image,
                  ),
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.food.name,
                      style: Styles.w500s20
                          .copyWith(fontSize: context.widthPercentage(5.3).h),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${widget.food.price}",
                          style: Styles.w500s20.copyWith(
                              fontSize: context.widthPercentage(5.3).h),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.amber,
                              size: 15.dg,
                            ),
                            Text(
                              "${widget.food.ratings}",
                              style: Styles.w500s17.copyWith(
                                color: context.secondaryColor(),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    verticalSpace(28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppIcon(
                          icon: Image.asset(
                            Assets.heartOutlined,
                            height: 24.h,
                            width: 24.w,
                          ),
                        ),
                        horizontalSpace(12),
                        GestureDetector(
                          onTap: () async {
                            await addOrRemoveFromCart();
                          },
                          child: AppIcon(
                            color: isInCart
                                ? context.primaryColor()
                                : context.tertiaryColor(),
                            icon: Image.asset(
                              Assets.cartOutlined,
                              color: isInCart
                                  ? context.tertiaryColor()
                                  : context.onBackgroundColor(),
                              height: 24.h,
                              width: 24.w,
                            ),
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
    );
  }
}

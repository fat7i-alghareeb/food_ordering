import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/features/cart/presentation/manger/cubit/cart_cubit.dart';
import 'package:food_ordering/utils/extensions.dart';
import '../../../data/models/cart_item_with_details_model.dart';
import '../../../../../utils/app_text_styles.dart';
import '../../../../../utils/constants.dart';
import '../../../../../utils/spacing.dart';

class CartFoodWidget extends StatefulWidget {
  const CartFoodWidget({
    super.key,
    required this.onTap,
    required this.food,
  });
  final Function() onTap;
  final CartItemWithDetails food;

  @override
  State<CartFoodWidget> createState() => _CartFoodWidgetState();
}

class _CartFoodWidgetState extends State<CartFoodWidget> {
  // late bool isInCart;
  late int quantity;
  @override
  void initState() {
    super.initState();
    quantity = widget.food.quantity;
  }

  Future<void> increaseQuantity(BuildContext context) async {
    await context.read<CartCubit>().updateCartItemQuantity(
        widget.food.cartItemId, (widget.food.quantity + 1));
    setState(() {
      quantity++;
    });
  }

  Future<void> decreaseQuantity(BuildContext context) async {
    await context.read<CartCubit>().updateCartItemQuantity(
        widget.food.cartItemId, (widget.food.quantity - 1));
    setState(() {
      quantity--;
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
                    Text(
                      "\$${(widget.food.price * quantity).toStringAsFixed(2)}",
                      style: Styles.w500s20
                          .copyWith(fontSize: context.widthPercentage(5.3).h),
                    ),
                    verticalSpace(28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 150.w,
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Constants.buttonRadius),
                            border: Border.all(
                              color: context.secondaryColor(),
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  decreaseQuantity(context);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    size: 20.w,
                                  ),
                                ),
                              ),
                              Text(
                                widget.food.quantity.toString(),
                                style: Styles.w400s20,
                              ),
                              GestureDetector(
                                onTap: () {
                                  increaseQuantity(context);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 5,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 20.w,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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

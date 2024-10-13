import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/features/cart/data/repo/cart_repo.dart';
import 'package:food_ordering/features/cart/presentation/manger/cubit/cart_cubit.dart';
import 'package:food_ordering/features/cart/presentation/manger/cubit/cart_state.dart';
import 'package:food_ordering/shared/widgets/custom_app_bar.dart';
import 'package:food_ordering/utils/assets.dart';
import 'package:food_ordering/utils/get_it.dart';
import '../../../../utils/spacing.dart';
import 'widgets/cart_items.dart';
import 'widgets/food_pricing_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: BlocProvider(
            create: (context) => CartCubit(getIt.get<CartRepository>()),
            child: const CartBody(),
          ),
        ),
      ),
    );
  }
}

class CartBody extends StatefulWidget {
  const CartBody({
    super.key,
  });

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  void initState() {
    super.initState();
    context.read<CartCubit>().fetchCartItems();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        if (state is CartLoaded) {
          return CustomScrollView(
            slivers: [
              sliverVerticalSpace(20),
              const CustomAppBar(
                image1: Assets.arrowLeft,
                title: "cart",
                padding: 0,
              ),
              sliverVerticalSpace(16),
              CartItems(
                items: state.cartItems,
              ),
              sliverVerticalSpace(24),
              const FoodPricingWidget(),
              sliverVerticalSpace(100),
            ],
          );
        } else if (state is CartError) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

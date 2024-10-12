import 'package:flutter/material.dart';

import '../../../../../shared/widgets/food_widget.dart';

class CartItemsWidget extends StatelessWidget {
  const CartItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: FoodWidget(),
        );
      },
      itemCount: 3,
    );
  }
}

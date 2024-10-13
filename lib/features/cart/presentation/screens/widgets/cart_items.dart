import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/features/cart/presentation/screens/widgets/cart_food_widget.dart';
import '../../../../../utils/routes/routers_paths.dart';
import '../../../data/models/cart_item_with_details_model.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    required this.items,
  });
  final List<CartItemWithDetails> items;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CartFoodWidget(
            onTap: () => Beamer.of(context, root: true).beamToNamed(RoutesPaths
                .detailsFromCart
                .replaceFirst(':id', items[index].foodId.toString())),
            food: items[index],
          ),
        );
      },
      itemCount: items.length,
    );
  }
}

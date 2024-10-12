import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../../../../../shared/widgets/food_widget.dart';
import '../../../../../utils/routes/routers_paths.dart';

class CartItemsWidget extends StatelessWidget {
  const CartItemsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: FoodWidget(
            onTap: () =>
                Beamer.of(context, root: true).beamToNamed(RoutesPaths.details),
          ),
        );
      },
      itemCount: 3,
    );
  }
}

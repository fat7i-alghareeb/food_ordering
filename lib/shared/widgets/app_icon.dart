import 'package:flutter/material.dart';
import 'package:food_ordering/utils/extensions.dart';

class AppIcon extends StatelessWidget {
  final Widget icon;
  final Color? color;
  const AppIcon({
    super.key,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
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

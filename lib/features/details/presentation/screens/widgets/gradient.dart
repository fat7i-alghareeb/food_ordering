import 'package:flutter/material.dart';
import '../../../../../utils/extensions.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: IgnorePointer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                context.backgroundColor().withOpacity(.8),
                //   context.primaryColor().withOpacity(0.3),
                context.backgroundColor().withOpacity(0.6),
                context.backgroundColor().withOpacity(0),
                Colors.transparent,
                Colors.transparent,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

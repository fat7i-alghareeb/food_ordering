import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/features/details/data/repo/details_repo.dart';
import 'package:food_ordering/features/details/presentation/manger/cubit/details_cubit.dart';
import 'package:food_ordering/features/details/presentation/screens/widgets/gradient.dart';
import 'package:food_ordering/shared/widgets/app_button.dart';
import 'package:food_ordering/utils/app_text_styles.dart';
import 'package:food_ordering/utils/extensions.dart';
import 'package:food_ordering/utils/get_it.dart';
import '../../../../utils/assets.dart';
import '../../../../utils/spacing.dart';
import 'widgets/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.id});
  final int id;
  @override
  Widget build(BuildContext context) {
    log(id.toString());
    return BlocProvider(
      create: (context) =>
          DetailsCubit(getIt.get<DetailsRepo>())..fetchFoodDetails(id),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              const DetailsBody(),
              const GradientWidget(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Builder(builder: (context) {
                    return AppButton(
                      onTap: () async {
                        await context.read<DetailsCubit>().addFoodToCart(id, 1);
                      },
                      color: context.primaryColor(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.cartOutlined,
                            color: context.tertiaryColor(),
                            height: 24.h,
                          ),
                          horizontalSpace(8),
                          Text(
                            "Add to cart",
                            style: Styles.w600s17.copyWith(
                                color: context.tertiaryColor(),
                                fontSize: context.widthPercentage(4.3).h),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/features/home/data/repo/home_repo.dart';
import 'package:food_ordering/features/home/presentation/manger/cubit/home_cubit.dart';
import 'package:food_ordering/features/home/presentation/manger/cubit/home_state.dart';
import 'package:food_ordering/utils/routes/routers_paths.dart';
import '../../../../../shared/widgets/food_widget.dart';

class FoodListView extends StatefulWidget {
  const FoodListView({
    super.key,
  });

  @override
  State<FoodListView> createState() => _FoodListViewState();
}

class _FoodListViewState extends State<FoodListView> {
  @override
  void initState() {
    super.initState();

    context.read<HomeCubit>().fetchFoods();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoaded) {
          final foods = state.foods;
          return SizedBox(
            height: 196.h,
            child: ListView.builder(
              itemCount: state.foods.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20.w),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: FoodWidget(
                  onTap: () => Beamer.of(context, root: true)
                      .beamToNamed(RoutesPaths.detailsFromHome),
                  food: foods[index],
                ),
              ),
            ),
          );
        } else if (state is HomeError) {
          return Text(state.message);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

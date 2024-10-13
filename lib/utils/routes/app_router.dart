import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/features/details/presentation/screens/details_screen.dart';
import 'package:food_ordering/utils/extensions.dart';
import '../../features/cart/presentation/screens/cart_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/on_boarding/presentation/screens/on_boarding_screen.dart';
import '../app_text_styles.dart';
import 'bottom_nav_bar/navigator.dart';
import 'routers_paths.dart';

bool isFirstTime = true;
final mainBeamerDelegate = BeamerDelegate(
  initialPath: isFirstTime ? RoutesPaths.onBoardingScreen : RoutesPaths.home,
  locationBuilder: RoutesLocationBuilder(
    routes: {
      RoutesPaths.onBoardingScreen: (context, state, data) =>
          const OnBoardingScreen(),
      RoutesPaths.detailsFromHome: (context, state, data) {
        final idString = state.pathParameters['id'] ?? "1";
        final id = int.tryParse(idString) ?? 1;
        return DetailsScreen(id: id);
      },
      RoutesPaths.detailsFromCart: (context, state, data) {
        final idString = state.pathParameters['id'] ?? "1";
        final id = int.tryParse(idString) ?? 1;
        return DetailsScreen(id: id);
      },
      RoutesPaths.home: (context, state, data) =>
          const DashBoardNavigatorScreen(),
      RoutesPaths.cart: (context, state, data) =>
          const DashBoardNavigatorScreen(),
    },
  ).call,
);
final bottomNavigatorBeamerKey = GlobalKey<BeamerState>();

final bottomNavigatorBeamerDelegate = BeamerDelegate(
  transitionDelegate: const NoAnimationTransitionDelegate(),
  locationBuilder: RoutesLocationBuilder(
    routes: {
      RoutesPaths.home: (context, state, data) => const HomeScreen(),
      RoutesPaths.favorite: (context, state, data) => Scaffold(
            body: Center(
              child: Text(
                "Favorite",
                style: Styles.w600s40.copyWith(
                  color: context.onBackgroundColor(),
                ),
              ),
            ),
          ),
      RoutesPaths.cart: (context, state, data) => const CartScreen(),
      RoutesPaths.profile: (context, state, data) => Scaffold(
            body: Center(
              child: Text(
                "Profile",
                style: Styles.w600s40.copyWith(
                  color: context.onBackgroundColor(),
                ),
              ),
            ),
          ),
    },
  ).call,
);

// app_router.dart
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/features/details/presentation/screens/details_screen.dart';
import 'package:food_ordering/features/home/presentation/screens/home_screen.dart';
import 'package:food_ordering/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:food_ordering/features/cart/presentation/screens/cart_screen.dart';
import 'package:food_ordering/utils/routes/routers_paths.dart';

import 'bottom_nav_bar/navigator.dart';

bool isFirstTime = true;

class AppRouter {
  static final GlobalKey<BeamerState> homeNavigatorKey =
      GlobalKey<BeamerState>();
  static final GlobalKey<BeamerState> cartNavigatorKey =
      GlobalKey<BeamerState>();

  static final mainBeamerDelegate = BeamerDelegate(
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

  static final bottomNavigatorBeamerKey = GlobalKey<BeamerState>();

  static final bottomNavigatorBeamerDelegate = BeamerDelegate(
    transitionDelegate: const NoAnimationTransitionDelegate(),
    locationBuilder: RoutesLocationBuilder(
      routes: {
        RoutesPaths.home: (context, state, data) => const HomeScreen(),
        RoutesPaths.favorite: (context, state, data) => _buildFavoriteScreen(),
        RoutesPaths.cart: (context, state, data) => const CartScreen(),
        RoutesPaths.profile: (context, state, data) => _buildProfileScreen(),
      },
    ).call,
  );

  static Widget _buildFavoriteScreen() {
    return const Scaffold(
      body: Center(
        child: Text(
          "Favorite",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  static Widget _buildProfileScreen() {
    return const Scaffold(
      body: Center(
        child: Text(
          "Profile",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

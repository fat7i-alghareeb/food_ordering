import 'package:food_ordering/features/cart/data/repo/cart_repo.dart';
import 'package:food_ordering/features/home/data/repo/home_repo.dart';
import 'package:get_it/get_it.dart';

import '../features/details/data/repo/details_repo.dart';
import 'database/database.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<AppDatabase>(AppDatabase());

  getIt.registerSingleton<FoodDao>(FoodDao(getIt.get<AppDatabase>()));
  getIt.registerSingleton<CartDao>(CartDao(getIt.get<AppDatabase>()));
  getIt.registerSingleton<HomeRepo>(
    HomeRepo(
      foodDao: getIt.get<FoodDao>(),
      cartDao: getIt.get<CartDao>(),
    ),
  );
  getIt.registerSingleton<DetailsRepo>(
    DetailsRepo(
      foodDao: getIt.get<FoodDao>(),
      cartDao: getIt.get<CartDao>(),
    ),
  );
  getIt.registerSingleton<CartRepository>(
    CartRepository(
      getIt.get<CartDao>(),
    ),
  );
}

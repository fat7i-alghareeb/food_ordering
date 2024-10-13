import 'package:get_it/get_it.dart';

import 'database/database.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<AppDatabase>(AppDatabase());
  getIt.registerSingleton<FoodDao>(FoodDao(getIt.get<AppDatabase>()));
  getIt.registerSingleton<CartDao>(CartDao(getIt.get<AppDatabase>()));
}

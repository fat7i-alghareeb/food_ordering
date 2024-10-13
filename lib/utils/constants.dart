import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_ordering/utils/assets.dart';
import 'package:food_ordering/utils/database/database.dart';
import 'package:drift/drift.dart' as drift;

class Constants {
  static final double borderRadius = 16.r;
  static final double buttonRadius = 40.r;
  static int bottomNavSelectedIndex = 0;

  static const String dummyDescription =
      "Our classic cheeseburger is made with a fresh, never-frozen beef patty that is cooked to perfection and topped with melted American cheese, lettuce, tomato, pickles, and onions. It is served on a toasted bun and is sure to satisfy your hunger.Our classic cheeseburger is made with a fresh, never-frozen beef patty that is cooked to perfection and topped with melted American cheese, lettuce, tomato, pickles, and onions. It is served on a toasted bun and is sure to satisfy your hunger.";

  static const List<FoodsCompanion> foodItems = [
    FoodsCompanion(
      name: drift.Value('Pizza'),
      description: drift.Value(Constants.dummyDescription),
      price: drift.Value(8.0),
      delivery: drift.Value(15),
      review: drift.Value(5),
      ratings: drift.Value(4),
      image: drift.Value(Assets.pizza),
    ),
    FoodsCompanion(
      name: drift.Value('Pizza'),
      description: drift.Value(Constants.dummyDescription),
      price: drift.Value(8.0),
      delivery: drift.Value(15),
      review: drift.Value(5),
      ratings: drift.Value(4),
      image: drift.Value(Assets.pizza),
    ),
    FoodsCompanion(
      name: drift.Value('burger'),
      description: drift.Value(Constants.dummyDescription),
      price: drift.Value(12.4),
      delivery: drift.Value(20),
      review: drift.Value(5),
      ratings: drift.Value(4),
      image: drift.Value(Assets.bigBurger),
    ),
    FoodsCompanion(
      name: drift.Value('fries'),
      description: drift.Value(Constants.dummyDescription),
      price: drift.Value(2.4),
      delivery: drift.Value(15),
      review: drift.Value(5),
      ratings: drift.Value(4),
      image: drift.Value(Assets.all),
    ),
  ];
}

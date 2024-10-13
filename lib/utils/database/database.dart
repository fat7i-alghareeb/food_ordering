import 'dart:developer';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
part 'database.g.dart';

class Foods extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get delivery => integer()();
  IntColumn get review => integer()();
  IntColumn get ratings => integer()();
  RealColumn get price => real()();
  TextColumn get name => text().withLength(min: 3, max: 60)();
  TextColumn get image => text()();
  TextColumn get description => text()();
}

class CartItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get quantity => integer()();

  IntColumn get foodId => integer().references(Foods, #id)();
}

@DriftDatabase(tables: [Foods, CartItems], daos: [FoodDao, CartDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      // Use path_provider to get the application documents directory
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'my_database.sqlite'));
      return NativeDatabase(file);
    });
  }
}

@DriftAccessor(tables: [CartItems, Foods])
class CartDao extends DatabaseAccessor<AppDatabase> with _$CartDaoMixin {
  final AppDatabase db;

  CartDao(this.db) : super(db);

  Future<void> addFoodToCart(int foodId, int quantity) async {
    await into(cartItems).insert(CartItemsCompanion(
      foodId: Value(foodId),
      quantity: Value(quantity),
    ));
  }

  Future<void> updateCartQuantity(int cartItemId, int newQuantity) async {
    await (update(cartItems)..where((tbl) => tbl.id.equals(cartItemId)))
        .write(CartItemsCompanion(quantity: Value(newQuantity)));
  }

  Future<List<CartItem>> getAllCartItems() async {
    return await select(cartItems).get();
  }

  Future<List<dynamic>> getCartItemsWithFoodDetails() async {
    final query = select(cartItems).join(
      [
        leftOuterJoin(foods, foods.id.equalsExp(cartItems.foodId)),
      ],
    );

    return await query.map((row) {
      final cartItem = row.readTable(cartItems);
      final food = row.readTable(foods);
      return {
        'cartItem': cartItem,
        'food': food,
      };
    }).get();
  }
}

@DriftAccessor(tables: [Foods])
class FoodDao extends DatabaseAccessor<AppDatabase> with _$FoodDaoMixin {
  final AppDatabase db;

  FoodDao(this.db) : super(db);

  Future<List<Food>> getAllFoods() async {
    return await select(foods).get();
  }

  Future<void> insertFood(FoodsCompanion food) async {
    await into(foods).insert(food);
  }

  Future<void> deleteAllFoods() async {
    await delete(foods).go();
  }

  Future<void> deleteSingleFood(int id) async {
    await (delete(foods)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<Food> getSingleFood(int id) async {
    return await (select(foods)..where((tbl) => tbl.id.equals(id))).getSingle();
  }
}

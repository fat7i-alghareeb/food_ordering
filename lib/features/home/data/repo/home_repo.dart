import '../../../../utils/database/database.dart';

class HomeRepo {
  final FoodDao foodDao;
  final CartDao cartDao;

  HomeRepo({required this.foodDao, required this.cartDao});

  Future<List<Food>> getAllFoods() async {
    return await foodDao.getAllFoods();
  }

  Future<void> addFoodToCart(int foodId, int quantity) async {
    await cartDao.addFoodToCart(foodId, quantity);
  }
}

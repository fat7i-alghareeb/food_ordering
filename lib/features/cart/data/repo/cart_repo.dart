import '../../../../utils/database/database.dart';
import '../models/cart_item_with_details_model.dart';

class CartRepository {
  final CartDao cartDao;

  CartRepository(this.cartDao);

  Future<void> updateCartItemQuantity(int id, int quantity) async {
    await cartDao.updateCartQuantity(id, quantity);
  }

  Future<List<CartItemWithDetails>> getCartItems() async {
    final result = await cartDao.getCartItemsWithFoodDetails();
    return result.map((item) {
      final cartItem = item['cartItem'] as CartItem;
      final food = item['food'] as Food;

      return CartItemWithDetails(
        cartItemId: cartItem.id,
        name: food.name,
        quantity: cartItem.quantity,
        price: food.price,
      );
    }).toList();
  }
}

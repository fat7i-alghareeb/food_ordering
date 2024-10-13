import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/cart_item_with_details_model.dart';
import '../../../data/repo/cart_repo.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepository cartRepository;

  CartCubit(this.cartRepository) : super(CartInitial());
  List<CartItemWithDetails> cartItems = [];
  Future<void> fetchCartItems() async {
    emit(CartLoading());
    try {
      cartItems = await cartRepository.getCartItems();
      emit(CartLoaded(cartItems));
    } catch (e) {
      emit(CartError('Failed to fetch cart items: ${e.toString()}'));
    }
  }

  Future<void> updateCartItemQuantity(int id, int quantity) async {
    try {
      await cartRepository.updateCartItemQuantity(id, quantity);
      await fetchCartItems();
    } catch (e) {
      emit(CartError('Failed to update cart item quantity: ${e.toString()}'));
    }
  }

  double calculateTotalPrice() {
    double total = 0.0;
    for (var item in cartItems) {
      total += item.price * item.quantity;
    }
    return total;
  }
}

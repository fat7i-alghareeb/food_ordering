import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repo/cart_repo.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepository cartRepository;

  CartCubit(this.cartRepository) : super(CartInitial());

  Future<void> fetchCartItems() async {
    emit(CartLoading());
    try {
      final cartItems = await cartRepository.getCartItems();
      emit(CartLoaded(cartItems));
    } catch (e) {
      emit(CartError('Failed to fetch cart items: ${e.toString()}'));
    }
  }

  Future<void> updateCartItemQuantity(int id, int quantity) async {
    try {
      await cartRepository.updateCartItemQuantity(id, quantity);
      // Optionally, refetch the cart items to update the UI
      await fetchCartItems();
    } catch (e) {
      emit(CartError('Failed to update cart item quantity: ${e.toString()}'));
    }
  }
}

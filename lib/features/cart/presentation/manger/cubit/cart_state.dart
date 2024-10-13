// cart_state.dart
import '../../../data/models/cart_item_with_details_model.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartLoading extends CartState {}

class CartPrice extends CartState {
  final double totalPrice;

  CartPrice({required this.totalPrice});
}

class CartLoaded extends CartState {
  final List<CartItemWithDetails> cartItems;

  CartLoaded(this.cartItems);
}

class CartError extends CartState {
  final String message;

  CartError(this.message);
}

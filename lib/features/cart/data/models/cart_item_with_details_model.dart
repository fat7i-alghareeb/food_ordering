class CartItemWithDetails {
  final int cartItemId;
  final String name;
  final String image;
  final int quantity;
  final double price;

  CartItemWithDetails({
    required this.cartItemId,
    required this.name,
    required this.quantity,
    required this.price,
    required this.image,
  });
}

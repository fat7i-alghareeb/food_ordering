import '../../../../../utils/database/database.dart';

abstract class HomeState {}

final class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<Food> foods;

  HomeLoaded(this.foods);
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);
}

class CartUpdateSuccess extends HomeState {
  final String message;

  CartUpdateSuccess(this.message);
}

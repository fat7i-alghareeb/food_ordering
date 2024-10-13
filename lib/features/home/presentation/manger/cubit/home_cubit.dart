import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repo/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;

  HomeCubit(this.homeRepo) : super(HomeInitial());

  Future<void> fetchFoods() async {
    try {
      emit(HomeLoading());
      final foods = await homeRepo.getAllFoods();
      emit(HomeLoaded(foods));
    } catch (e) {
      emit(HomeError('Failed to fetch foods: ${e.toString()}'));
    }
  }

  Future<void> addFoodToCart(int foodId, int quantity) async {
    try {
      await homeRepo.addFoodToCart(foodId, quantity);
    } catch (e) {
      emit(HomeError('Failed to add food to cart: ${e.toString()}'));
    }
  }

  Future<void> removeFoodFromCart(int foodId) async {
    try {
      await homeRepo.removeFoodFromCart(foodId);
    } catch (e) {
      emit(HomeError('Failed to remove food from cart: ${e.toString()}'));
    }
  }
}

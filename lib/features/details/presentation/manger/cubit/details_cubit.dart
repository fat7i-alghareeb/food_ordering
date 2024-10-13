import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repo/details_repo.dart';
import 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final DetailsRepo detailsRepo;

  DetailsCubit(this.detailsRepo) : super(DetailsInitial());

  Future<void> fetchFoodDetails(int id) async {
    emit(DetailsLoading());
    try {
      final food = await detailsRepo.getFoodById(id);
      emit(DetailsLoaded(food));
    } catch (e) {
      emit(DetailsError('Failed to load food details: ${e.toString()}'));
    }
  }

  Future<void> addFoodToCart(int foodId, int quantity) async {
    try {
      await detailsRepo.addFoodToCart(foodId, quantity);
    } catch (e) {
      emit(DetailsError('Failed to add food to cart: ${e.toString()}'));
    }
  }
}

import '../../../../../utils/database/database.dart';

abstract class DetailsState {}

class DetailsInitial extends DetailsState {}

class DetailsLoading extends DetailsState {}

class DetailsLoaded extends DetailsState {
  final Food food;

  DetailsLoaded(this.food);
}

class DetailsError extends DetailsState {
  final String message;

  DetailsError(this.message);
}

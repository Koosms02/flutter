part of 'favourite_bloc.dart';

abstract class FavouriteState extends Equatable {
  const FavouriteState();

  @override
  List<Object> get props => [];
}

class FavouriteLoading extends FavouriteState {}

class FavouriteLoaded extends FavouriteState {
  final favourite_model favouriteList;

  const FavouriteLoaded({this.favouriteList = const favourite_model()});

  @override
  List<Object> get props => [favouriteList];
}

class FavouriteError extends FavouriteState {}

part of 'favourite_bloc.dart';

abstract class FavouriteEvent extends Equatable {
  const FavouriteEvent();

  @override
  List<Object> get props => [];
}

//for when the favourite folder in opened
class LoadFavouriteModuleList extends FavouriteEvent {}

class AddfavouriteModule extends FavouriteEvent {
  Module module;

  AddfavouriteModule(this.module);

  @override
  List<Object> get props => [module];
}

class RemovefavouriteModule extends FavouriteEvent {
  final Module module;

  const RemovefavouriteModule(this.module);

  @override
  List<Object> get props => [module];
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:studyarchive/Data/Model/favouriteModel.dart';
import 'package:studyarchive/Data/Model/model.dart';
import 'package:studyarchive/Presentation/screens/favourites/favourite.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(FavouriteLoading()) {
    on<LoadFavouriteModuleList>(_onLoadFavouriteList);
    on<AddfavouriteModule>(_onAddFavouriteModule);
    on<RemovefavouriteModule>(_onRemoveFavouriteModule);
  }

  void _onLoadFavouriteList(
      LoadFavouriteModuleList event, Emitter<FavouriteState> emit) async {
    emit(FavouriteLoading());
    try {
      await Future<void>.delayed(const Duration(seconds: 3));
      emit(FavouriteLoaded());
    } on Exception {
      emit(
        FavouriteError(),
      );
    }
  }

  void _onAddFavouriteModule(
      AddfavouriteModule event, Emitter<FavouriteState> emit) {
    final state = this.state;

    if (state is FavouriteLoaded) {
      try {
        emit(
          FavouriteLoaded(
            favouriteList: favourite_model(
              modules: List.from(state.favouriteList.modules)
                ..add(event.module),
            ),
          ),
        );
      } on Exception {
        emit(
          FavouriteError(),
        );
      }
    }
  }

  void _onRemoveFavouriteModule(
      RemovefavouriteModule event, Emitter<FavouriteState> emit) {
    final state = this.state;

    if (state is FavouriteLoaded) {
      try {
        emit(
          FavouriteLoaded(
            favouriteList: favourite_model(
              modules: List.from(state.favouriteList.modules)
                ..remove(event.module),
            ),
          ),
        );
      } on Exception {
        emit(
          FavouriteError(),
        );
      }
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studyarchive/Data/Model/model.dart';
import 'package:studyarchive/Presentation/Widget/moduleContainer.dart';
import 'package:studyarchive/Presentation/common_blocs/favorite/bloc/favourite_bloc.dart';
import 'package:studyarchive/Presentation/screens/Profile/Profile.dart';

class favourite extends StatefulWidget {
  const favourite();
  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text("Favourites"),
        leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ),
                    );
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ),
            )),
      ),
      body: BlocBuilder<FavouriteBloc, FavouriteState>(
        builder: (context, state) {
          if (state is FavouriteLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            );
          }
          if (state is FavouriteLoaded) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 1.5),
              itemCount: state.favouriteList.modules.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: moduleContainer(
                      imageName: state.favouriteList.modules[index].Images,
                      Module: state.favouriteList.modules[index].ModuleName,
                      IsLiked: state.favouriteList.modules[index].LikedStatus,
                      icon: Icon(
                        Icons.delete,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Text("something went wrong ");
          }
        },
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studyarchive/Data/Model/docModel.dart';
import 'package:studyarchive/Data/Model/favouriteModel.dart';
import 'package:studyarchive/Presentation/common_blocs/favorite/bloc/favourite_bloc.dart';

class moduleContainer extends StatefulWidget {
  String imageName;
  String Module;
  bool IsLiked;
  Icon icon;

  moduleContainer({
    required this.imageName,
    required this.Module,
    required this.IsLiked,
    required this.icon,
  });

  @override
  _moduleContainerState createState() => _moduleContainerState();
}

class _moduleContainerState extends State<moduleContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              width: 190,
              child: Card(
                child: Image.asset(
                  widget.imageName,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        width: 180,
                        child: Text(
                          widget.Module,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Material(
                          color: Colors.transparent,
                          child: BlocBuilder<FavouriteBloc, FavouriteState>(
                            builder: (context, state) {
                              if (state is FavouriteLoading) {
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.blue,
                                  ),
                                );
                              }
                              if (state is FavouriteLoaded) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      context.read<FavouriteBloc>().add(
                                            RemovefavouriteModule(
                                              Module(
                                                  widget.Module,
                                                  widget.IsLiked,
                                                  widget.imageName),
                                            ),
                                          );
                                    });
                                  },
                                  splashColor: Colors.teal,
                                  child: widget.icon,
                                );
                              } else {
                                return Text("something wrong");
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

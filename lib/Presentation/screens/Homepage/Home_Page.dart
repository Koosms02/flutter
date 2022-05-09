import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:studyarchive/Data/Model/model.dart';
import 'package:studyarchive/Data/Repository/moduleFolderRepository.dart';
import 'package:studyarchive/Data/Repository/moduleRepository.dart';
import 'package:studyarchive/Data/Model/model.dart';
import 'package:studyarchive/Presentation/Widget/Widget.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 380,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: 280,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            children: [
                              //should add a container
                              homeColumn(),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: CircleAvatar(
                                  radius: 45,
                                  backgroundColor: Colors.blueGrey,
                                  child: InkWell(
                                    onTap: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Recommeded",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 20,
                                  ),
                                  child: Container(
                                    width: 50,
                                    child: ClipRRect(
                                      child: Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          onTap: () {
                                            //TO:DO should navigate to other pages
                                          },
                                          splashColor: Colors.grey,
                                          child: Text(
                                            "View all",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 27,
                      child: Row(
                        children: [
                          folderContainer(
                            120,
                            120,
                            folderRepository().fModules[0].ModuleCode,
                            folderRepository().fModules[0].ModuleName,
                            folderRepository().fModules[0].UniversityName,
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          folderContainer(
                            120, 120,
                            folderRepository().fModules[1].ModuleCode,
                            folderRepository().fModules[1].ModuleName,
                            folderRepository().fModules[1].UniversityName,
                            //Change the navigation bar
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Row(
                  children: [
                    folderContainer(
                      120,
                      120,
                      folderRepository().fModules[2].ModuleCode,
                      folderRepository().fModules[2].ModuleName,
                      folderRepository().fModules[2].UniversityName,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Row(
                  children: [
                    Text("Recently viewed modules"),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: Container(
                        width: 50,
                        child: ClipRRect(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              splashColor: Colors.grey,
                              child: Text(
                                "View all",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: 230,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    ),
                    child: new ListView(
                      scrollDirection: Axis.horizontal,
                      children: new List.generate(
                        Module.modules.length,
                        (index) => moduleContainer(
                          imageName: Module.modules[index].Images,
                          Module: Module.modules[index].ModuleName,
                          IsLiked: Module.modules[index].LikedStatus,
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

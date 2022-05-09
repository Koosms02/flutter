import 'package:flutter/material.dart';
import 'package:studyarchive/Data/Model/favouriteModel.dart';
import 'package:studyarchive/Presentation/Widget/Widget.dart';
import 'package:studyarchive/Presentation/screens/settings/Settings.dart';
import 'package:studyarchive/Presentation/screens/favourites/favourite.dart';
//import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height - 70,
            width: double.infinity,
            color: Colors.teal,
            child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 150,
                      ),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => settings(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        //add a picture uploaded
                      ),
                      Positioned(
                        bottom: 0,
                        right: 5,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 18,
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
                  height: 20,
                ),
                Text(
                  "Mogafe Koos",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "University of pretoria",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "BSc Physics, 2020",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    tapCard(
                      "Favourite",
                      Icon(
                        Icons.favorite,
                        color: Colors.teal,
                      ),
                      favourite_model().modules.length,
                      favourite(),
                    ),
                    tapCard(
                      "Uploads",
                      Icon(
                        Icons.upload_file,
                        color: Colors.teal,
                      ),
                      12,
                      null,
                    ),
                    tapCard(
                      "Notes",
                      Icon(
                        Icons.notes,
                        color: Colors.teal,
                      ),
                      12,
                      null,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:studyarchive/Presentation/screens/screens.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Home_Page(),
      SearchPage(),
      UploadPage(),
      Profile(),
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List bottomItems = [
      pageIndex == 0
          ? Icon(
              Icons.home,
              color: Colors.teal,
              size: 35,
            )
          : Icon(
              Icons.home,
              color: Colors.blueGrey,
            ),
      pageIndex == 1
          ? Icon(
              Icons.search,
              color: Colors.teal,
              size: 35,
            )
          : Icon(
              Icons.search,
              color: Colors.blueGrey,
            ),
      pageIndex == 2
          ? Icon(
              Icons.add_circle,
              color: Colors.teal,
              size: 35,
            )
          : Icon(
              Icons.add_circle,
              color: Colors.blueGrey,
            ),
      pageIndex == 3
          ? Icon(
              Icons.person,
              color: Colors.teal,
              size: 35,
            )
          : Icon(
              Icons.person,
              color: Colors.blueGrey,
            ),
    ];
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
          )
        ],
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
                onTap: () {
                  selectedTab(index);
                },
                child: bottomItems[index]);
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}

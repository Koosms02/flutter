import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
          title: Container(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.teal.shade100,
                contentPadding: EdgeInsets.all(0.0),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.teal.shade600,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.teal.shade500,
                ),
                hintText: "Search",
              ),
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Text("ALL"),
              Text("Notes"),
              Text("Previous paper"),
              Text("Study Sets"),
              Text("Modules"),
              Text("Faculty"),
              Text("University"),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text("ALL")),
          Center(child: Text("Notes")),
          Center(child: Text("Previous paper")),
          Center(child: Text("Study Sets")),
          Center(child: Text("Modules")),
          Center(child: Text("Faculty")),
          Center(child: Text("University")),
        ]),
      ),
    );
  }
}

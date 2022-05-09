import 'package:flutter/material.dart';
import 'package:studyarchive/Presentation/Widget/Widget.dart';
import 'package:studyarchive/Presentation/screens/screens.dart';

class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.teal,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 20,
              ),
              child: settingsButton(Icon(Icons.update), "Upgrade", null),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: settingsButton(Icon(Icons.people), "Invite friends", null),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: settingsButton(
                  Icon(Icons.privacy_tip), "Terms and conditions", null),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child:
                  settingsButton(Icon(Icons.password), "Change password", null),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: settingsButton(Icon(Icons.logout), "Log out", null),
            ),
          ],
        ),
      ),
    );
  }
}

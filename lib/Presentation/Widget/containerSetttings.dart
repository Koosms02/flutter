import 'package:flutter/material.dart';

class settingsButton extends StatelessWidget {
  late Icon IconsButtom;
  late String buttonName;
  late var navigationPage;

  settingsButton(this.IconsButtom, this.buttonName, this.navigationPage);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black, width: 0.2),
        ),
      ),
      child: ClipRRect(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              //TO:DO should be updated
              Navigator.push(
                context,
                (MaterialPageRoute(builder: (context) => this.navigationPage)),
              );
            },
            child: Row(
              children: [
                this.IconsButtom,
                SizedBox(
                  width: 10,
                ),
                Text(this.buttonName),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class homeColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String now = DateTime.now().toString();
    String year = now.substring(
      0,
      now.indexOf("-"),
    );
    String month = now.substring(5, 7);
    String day = now.substring(8, 10);
    String Months = "";

    String time = now.substring(11, 16);

    switch (month) {
      case "01":
        Months = "January";
        break;
      case "02":
        Months = "February";
        break;
      case "03":
        Months = "March";
        break;
      case "04":
        Months = "April";
        break;
      case "05":
        Months = "May";
        break;
      case "06":
        Months = "June";
        break;
      case "07":
        Months = "July";
        break;
      case "08":
        Months = "August";
        break;
      case "09":
        Months = "September";
        break;
      case "10":
        Months = "October";
        break;
      case "11":
        Months = "November";
        break;
      case "12":
        Months = "December";
        break;
    }
    String date = day + " " + Months + " ," + year;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 25,
          ),
          child: Text(
            date,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(
            left: 25,
          ),
          child: Text(
            Greeting(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            "What are you up to today?",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}

String Greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return "Good Morning";
  }
  if (hour < 17) {
    return "Good Afternoon";
  }
  return "Good Evening";
}

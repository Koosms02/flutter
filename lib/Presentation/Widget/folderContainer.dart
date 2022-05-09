import 'package:flutter/material.dart';

// folderContainer(120, 120, "WTW 220", "Analysis",
//     "university of pretoria"),
class folderContainer extends StatelessWidget {
  late double Width;
  late double Height;
  late String ModuleName;
  late String ModuleCode;
  late String UniversityName;

  folderContainer(
    this.Width,
    this.Height,
    this.ModuleCode,
    this.ModuleName,
    this.UniversityName,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.Height,
      width: this.Width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.teal,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
            ),
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.ModuleName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  Text(this.ModuleCode),
                  Spacer(),
                  Text(
                    this.UniversityName,
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

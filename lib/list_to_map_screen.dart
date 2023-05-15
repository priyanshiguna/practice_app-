import 'package:flutter/material.dart';

class ListToMap extends StatefulWidget {
  const ListToMap({Key? key}) : super(key: key);

  @override
  State<ListToMap> createState() => _ListToMapState();
}

class _ListToMapState extends State<ListToMap> {
  List listOfColor = [
    {"Course": "Flutter", "Institute": "Skillqode", "color": Colors.red},
    {"Course": "Flutter", "Institute": "Skillqode", "color": Colors.yellow},
    {"Course": "Flutter", "Institute": "Skillqode", "color": Colors.blue},
    {"Course": "Flutter", "Institute": "Skillqode", "color": Colors.pink},
    {"Course": "Flutter", "Institute": "Skillqode", "color": Colors.deepOrange},
    {"Course": "Flutter", "Institute": "Skillqode", "color": Colors.purple},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List of passing Map"),
      ),
      body: Column(
        children: listOfColor.map((value) {
          return Container(
            height: 100,
            width: double.infinity,
            color: value['color'],
            child: Row(
              children: [
                Text("Course: ${value['Course']}",
                    style: const TextStyle(fontSize: 20)),
                const SizedBox(width: 15),
                Text("Institute: ${value['Institute']}",
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

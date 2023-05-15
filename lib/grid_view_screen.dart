import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Grid View Screen",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w800,
            fontSize: 21,
          ),
        ),
        backgroundColor: Colors.white24,
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          childAspectRatio: 5,
        ),
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.yellow,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.red,
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.lightBlueAccent,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.pink,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.green,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.teal,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.black,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.lightGreen,
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}

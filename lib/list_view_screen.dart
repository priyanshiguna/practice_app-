import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List View Screen",
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w800,
            fontSize: 21,
          ),
        ),
        backgroundColor: Colors.white24,
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.deepPurple,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              child: ListView(
                padding: EdgeInsets.all(20),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.amber,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.deepOrangeAccent,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.green,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.deepPurple,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.red,
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.amber,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.deepOrangeAccent,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.green,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.deepPurple,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.red,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

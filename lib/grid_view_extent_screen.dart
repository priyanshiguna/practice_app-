import 'package:flutter/material.dart';

class GridViewExtentScreen extends StatefulWidget {
  const GridViewExtentScreen({required Key key}) : super(key: key);

  @override
  State<GridViewExtentScreen> createState() => _GridViewExtentScreenState();
}

class _GridViewExtentScreenState extends State<GridViewExtentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Extent Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.pink,
                child: const Text('one', style: TextStyle(fontSize: 18)),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.blue,
                child: const Text('Two', style: TextStyle(fontSize: 18)),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.blueAccent,
                child: const Text('Three', style: TextStyle(fontSize: 18)),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal,
                child: const Text('Four', style: TextStyle(fontSize: 18)),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.purple,
                child: const Text('Five', style: TextStyle(fontSize: 18)),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.deepOrangeAccent,
                child: const Text('Six', style: TextStyle(fontSize: 18)),
              ),
            ],
          )),
    );
  }
}
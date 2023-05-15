import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  int tabIndex = 0;

  List<String> listData = ["data", "data", "data", "data", "data"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: listData.length,
        padding: EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              debugPrint("Index --> $index");
              tabIndex = index;
              setState(() {});
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: tabIndex == index ? Colors.grey : Colors.blue,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 15),
              child: Text(
                listData[index] + index.toString(),
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

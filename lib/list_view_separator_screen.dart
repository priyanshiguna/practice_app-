import 'package:flutter/material.dart';

class ListViewSeparator extends StatefulWidget {
  const ListViewSeparator({Key? key}) : super(key: key);

  @override
  State<ListViewSeparator> createState() => _ListViewSeparatorState();
}

class _ListViewSeparatorState extends State<ListViewSeparator> {
  int tabIndex = 0;

  List<String> listData = ["data", "data", "data", "data", "data"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Separator"),
      ),
      body: ListView.separated(
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
                color: tabIndex == index ? Colors.black12 : Colors.blue,
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
          separatorBuilder: (BuildContext context, int index) => Container(
                height: 20,
                width: 20,
                color: Colors.blueGrey,
                child: Text(
                  listData[index] + index.toString(),
                  style: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
    );
  }
}

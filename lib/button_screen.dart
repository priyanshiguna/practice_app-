import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// enum SingingCharacter {  fcfgg , ugbujb, bubj, kmknjgc}

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  bool switchData = false;
  bool checkBoxData = true;

  // SingingCharacter? character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Botton Screen"),
      ),
      body: Column(
        children: [
          FloatingActionButton(
            onPressed: () {},
            tooltip: "Add Data",
            splashColor: Colors.black12,
            child: Icon(Icons.add),
          ),
          BackButton(),
          CloseButton(),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),
          ),
          IconButton(
            onPressed: () {},
            tooltip: "Add",
            icon: Icon(Icons.add),
          ),
          TextButton(
            onPressed: () {
              debugPrint("onPressed");
            },
            onLongPress: () {
              debugPrint("onLongPress");
            },
            child: Text("Add Data"),
          ),
          CupertinoSwitch(
            value: switchData,
            onChanged: (value) {
              debugPrint("onChanged --> $value");
              switchData = value;
              setState(() {});
            },
          ),
          SizedBox(height: 40),
          Transform.scale(
            scale: 3,
            child: Checkbox(
              value: checkBoxData,
              shape: CircleBorder(),
              checkColor: Colors.red,
              overlayColor: MaterialStateProperty.all(Colors.red.shade300),
              fillColor: MaterialStateProperty.all(Colors.yellow),
              onChanged: (data) {
                checkBoxData = data!;
                setState(() {});
              },
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(Size(120, 55)),
            ),
            child: Text("Next Screen"),
          ),
          SizedBox(height: 20),
          DropdownButton(
            value: dropdownvalue,
            icon: const Icon(Icons.keyboard_arrow_down),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add Data",
        // hoverColor: Colors.yellow,
        splashColor: Colors.yellow,

        child: Icon(Icons.add),
      ),
    );
  }
}

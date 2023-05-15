import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerScreen extends StatefulWidget {
  const TimePickerScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<TimePickerScreen> {
  TextEditingController timeInput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    timeInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TimePicker on TextField"),
        backgroundColor: Colors.blue, //background color of app bar
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: 150,
        child: Center(
          child: TextField(
            controller: timeInput, //editing controller of this TextField
            decoration: const InputDecoration(
                icon: Icon(Icons.timer), //icon of text field
                labelText: "Enter Time" //label text of field
                ),
            readOnly:
                true, //set it true, so that user will not able to edit text
            onTap: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                initialTime: TimeOfDay.now(),
                context: context,
              );

              if (pickedTime != null) {
                //output 10:51 PM
                DateTime parsedTime = DateFormat.jm()
                    .parse(pickedTime.format(context).toString());
                //converting to DateTime so that we can further format on different pattern.
                //output 1970-01-01 22:53:00.000
                String formattedTime =
                    DateFormat('HH:mm:ss').format(parsedTime);
                //output 14:59:00
                //DateFormat() is from intl package, you can format the time on any pattern you need.

                setState(() {
                  timeInput.text = formattedTime; //set the value of text field.
                });
              } else {}
            },
          ),
        ),
      ),
    );
  }
}

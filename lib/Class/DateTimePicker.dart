import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

class ScreenDatePicker extends StatefulWidget {
  const ScreenDatePicker({super.key});

  @override
  State<ScreenDatePicker> createState() => _ScreenDatePickerState();
}

class _ScreenDatePickerState extends State<ScreenDatePicker> {
  final DateTime now = DateTime.now();
  final DateFormat Formatter = DateFormat("");
  String? selecteddate = "select";
  @override
  Widget build(BuildContext context) {
    // final String Formatted = Formatter.format(selectedDate);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Text(selecteddate!),
            FloatingActionButton(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.add_shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000, 1, 1),
                  lastDate: DateTime(2050, 1, 31),
                ).then((value) {
                  setState(() {
                    selecteddate = Formatter.format(value!);
                    print(selecteddate);
                    selecteddate = "${value.year}/${value.month}/${value.day}";
                  });
                });
              },
            ),
          ],
        ),
      )),
    );
  }
}

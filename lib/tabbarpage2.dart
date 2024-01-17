import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class TabBar2 extends StatefulWidget {
  TabBar2({super.key});

  @override
  State<TabBar2> createState() => _TabBar2State();
}

class _TabBar2State extends State<TabBar2> {
  File? Images;
  String selectedDate = "Select";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
                indicator:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                // indicatorColor: Colors.red,

                tabs: const [
                  Tab(
                    icon: Icon(
                      Icons.generating_tokens_sharp,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.assessment_outlined,
                      color: Colors.black,
                    ),
                  )
                ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: Center(
                    child: Column(
                      children: [
                        OutlinedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.white)),
                            onPressed: () {
                              ImagepickerFunction();
                            },
                            child: Text(
                              "IMAGE PICKER",
                              style: TextStyle(color: Colors.black),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              DatePickerFunction();
                            },
                            child: Text("Date Picker")),
                        Text(selectedDate)
                      ],
                    ),
                  ),
                  width: 300,
                  height: 300,
                  color: Colors.yellow,
                ),
                Container(
                  child: Images == null ? SizedBox() : Image.file(Images!),
                  width: 300,
                  height: 300,
                  color: Colors.lightBlueAccent,
                ),
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.brown,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  ImagepickerFunction() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        Images = File(pickedImage.path);
      });
    }
  }

  DatePickerFunction() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2050))
        .then((value) {
      setState(() {
        selectedDate = "${value!.day}/${value.month}/${value.year}";
      });
    });
  }
}

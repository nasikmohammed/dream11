import 'dart:async';

import 'package:dream11_project/BottomNavigation/ScreenChat.dart';
import 'package:dream11_project/BottomNavigation/ScreenReward.dart';
import 'package:dream11_project/ScreenHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List pages = [ScreenChat(), ScreenReward(), ScreenReward()];

  PageController controller = PageController();
  String selectedDate = "select date of birth";
  var datecontroller = TextEditingController();
  var controlleer = PageController();

  ///////////////////////////////////////////////////////

  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('EEE-yyyy/MM/dd');

  /////////////////////////////////////////////////////////

  final lastDate = DateTime(2050, 12, 31);
  @override
  Widget build(BuildContext context) {
    final String formatted = formatter.format(now);

    print(formatted);
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
          SizedBox(height: 16),
          SizedBox(
            height: 240,
            child: PageView.builder(
              controller: controlleer,
              // itemCount: pages.length,
              itemBuilder: (_, index) {
                return pages[index % pages.length];
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 12),
            child: Text(
              'Worm',
              style: TextStyle(color: Colors.black54),
            ),
          ),
          SmoothPageIndicator(
            onDotClicked: (index) {},
            controller: controlleer,
            count: pages.length,
            effect: const WormEffect(
              dotHeight: 16,
              dotWidth: 16,
              type: WormType.thinUnderground,
            ),
          ),
          TextFormField(
            controller: datecontroller,
          ),
          SizedBox(
            height: 20,
          ),
          Text(selectedDate),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000, 01, 01),
                      lastDate: lastDate)
                  .then((value) {
                setState(() {
                  print(value);

                  selectedDate = "${value!.year}/${value.month}/${value.day}";
                  datecontroller.text =
                      "${value.year}/${value.month}/${value.day}";
                });
              });
            },
            child: Icon(CupertinoIcons.calendar),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              showTimePicker(context: context, initialTime: TimeOfDay.now())
                  .then((value) {
                setState(() {
                  selectedDate = value!.format(context);
                });
              });
            },
            child: Icon(CupertinoIcons.clock),
          ),
        ]))));
  }
}
//  SingleChildScrollView(
//           child: Column(
//             children: [
//               TabBar(tabs: [
//                 Tab(
//                   icon: Icon(Icons.add_alert_outlined,   color: Colors.black,),
//                 ),
//                 Tab(
//                   icon: Icon(Icons.adb_sharp,   color: Colors.black,),
//                 ),
//                 Tab(
//                   icon: Icon(
//                     Icons.add_business_sharp,
//                     color: Colors.black,
//                   ),
//                 )
//               ]),

//             ],
//           ),
//         ),
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenReward extends StatefulWidget {
  const ScreenReward({super.key});

  @override
  State<ScreenReward> createState() => _ScreenRewardState();
}

class _ScreenRewardState extends State<ScreenReward> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Container(
              width: 500,
              height: 300,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            width: 415,
            height: 700,
            child: Column(
              children: [
                TabBar(
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        text: "Reward Shop",
                      ),
                      Tab(
                        text: "My Rewards",
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 237, 234, 234),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(Icons.percent_sharp),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text("Have a discount coupon code?"),
                      ),
                      IconButton(
                          onPressed: () {
                            ShowBottomSheet(context);
                          },
                          icon: Icon(Icons.arrow_forward_ios)),
                    ],
                  ),
                  width: 300,
                  height: 40,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 260),
                  child: Text(
                    "Active Rewards",
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.gift),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Giveaways",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Find all offers and discounts that make you feel special",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                          child: Icon(
                            Icons.percent,
                            size: 42,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "25% Discount",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Future<void> ShowBottomSheet(BuildContext ctx) async {
  showModalBottomSheet(
    context: ctx,
    builder: (ctx1) {
      return SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 238, 233, 233),
          width: double.infinity,
          height: 300,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffix: Icon(Icons.delete),
                      hintText: " Enter Your Code Here",
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 135),
                child: Container(
                    color: Colors.grey,
                    width: 350,
                    height: 40,
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "APPLY NOW",
                          style: TextStyle(color: Colors.white),
                        ))),
              )
            ],
          ),
        ),
      );
    },
  );
}

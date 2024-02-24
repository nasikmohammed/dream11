import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Screenwinners extends StatelessWidget {
  const Screenwinners({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> win1 = [
      "Assets/winners/win1.jpeg",
      "Assets/winners/win2.webp",
      "Assets/winners/win3.jpeg"
    ];
    List win2 = [
      "Assets/winners/win7.jpeg",
      "Assets/winners/win5.webp",
      "Assets/winners/win6.jpeg"
    ];
    List win3 = [
      "Assets/pr1.jpg",
      "Assets/winners/win8.webp",
      "Assets/winners/win9.webp"
    ];

    List CircleAvatats = [
      "Assets/pr1.jpg",
      "Assets/pr2.jpeg",
      "Assets/pr3.jpeg",
      "Assets/pr4.jpeg",
      "Assets/pr5.webp",
      "Assets/pr6.jpeg",
    ];
    List TeamN = ["AUS vs WI", "CSK vs GT", "CL vs LAK", "MCI vs MNU"];
    List DateN = [
      "09 Feb 2024",
      "13 Jan 2024",
      "09 Dec 2023",
      "02 Nov 2023",
    ];
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
          children: [
            Text(""),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 100,
                color: Color.fromARGB(255, 255, 255, 255),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 80,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(CircleAvatats[index]),
                      ),
                    );
                  },
                  itemCount: 6,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                        child: Text(
                          "MEGA CONTEST WINNERS",
                          style:
                              TextStyle(color: Color.fromARGB(255, 135, 17, 8)),
                        )))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 140,
                        decoration: BoxDecoration(
                            border: Border.all(
                                style: BorderStyle.solid,
                                width: 3,
                                color: Color.fromARGB(255, 203, 191, 191)),
                            color: Color.fromARGB(255, 247, 244, 244),
                            borderRadius: BorderRadius.circular(20)),
                        child: ListTile(
                          title: Row(
                            children: [
                              Text(TeamN[index],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 140,
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(DateN[index]),
                            ],
                          ),
                          subtitle: Row(
                            children: [
                              Container(
                                width: 106,
                                height: 100,
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(blurRadius: 5)],
                                    border: Border.all(color: Colors.black),
                                    color: Color.fromARGB(255, 238, 235, 235),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Text(
                                      "Rank#1",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 26, right: 26),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          win1[index],
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(blurRadius: 5)],
                                    border: Border.all(color: Colors.black),
                                    color: Color.fromARGB(255, 238, 235, 235),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Text(
                                      "Rank#2",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(win2[index]))
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 105,
                                height: 100,
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(blurRadius: 5)],
                                    border: Border.all(color: Colors.black),
                                    color: Color.fromARGB(255, 238, 235, 235),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Text(
                                      "Rank#3",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(win3[index]))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 0.1,
                      color: Color.fromARGB(255, 255, 255, 255),
                    );
                  },
                  itemCount: 3),
            )
          ],
        ));
  }
}

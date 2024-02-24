import 'package:dream11_project/BottomNavigation/ScreenChat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ScreenHomeBottom extends StatelessWidget {
  ScreenHomeBottom({super.key});
  final fermin = "Assets/ferminLopez.jpeg";
  List Matches = [
    "Assets/brazil vs germany.jpg",
    "Assets/spain vs portugal.jpg",
    "Assets/Arg vs Belg.jpg",
  ];
  List LeadingstTeam = ["NZ", "AUS", "PAK", "CSK", "RCB", "AFG"];
  List leadingTeam = [
    "New Zealand",
    "Australia",
    "Pakistan",
    "Chennai ",
    " Banglore",
    "Afganistan"
  ];
  List trailingStTeam = ["SL", "ENG", "IND", "KKR", "MI", "WI"];
  List trailingTeam = [
    "Srilanka",
    "England",
    "India",
    "Kolkata ",
    "Mumbai ",
    "West Indies"
  ];
  List time = [
    "0s",
    "2h 20m",
    "4h 25m",
    "9h 40m",
    "Tommorrow",
    "16 Jan",
  ];
  List strtTime = [
    "10:00 AM",
    "11:40 AM",
    "1:45 PM",
    "07:00 PM",
    "08:45 AM",
    "01:45 AM"
  ];
  List Mega = [
    "MEGA 9 Crores",
    "MEGA 8 Crores",
    "MEGA 9 Crores",
    "MEGA 40 Crores",
    "MEGA 1.5 Lakh",
    "MEGA 19 Lakh",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 3,
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      //...................................................................Cursel Slider
                      return CarouselSlider(
                        options: CarouselOptions(height: 80.0),
                        items: [
                          1,
                          2,
                          3,
                        ].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: 290,
                                  height: 100,
                                  margin: EdgeInsets.symmetric(),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 228, 227, 226),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    child: Image.asset(
                                      Matches[i - 1],
                                      fit: BoxFit.fill,
                                    ),
                                  ));
                            },
                          );
                        }).toList(),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: 1),
              ),
            ),
          ),
          ////////////////////////////////////////////////////////////////////////////////
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 150),
                  child: Text(
                    "Upcoming Matches",
                    style: GoogleFonts.archivoBlack(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: ListTile(
                                onTap: () {},
                                title: Column(
                                  children: [
                                    Center(
                                        child: Text(
                                      time[index],
                                      style: TextStyle(color: Colors.red),
                                    )),
                                    Text(
                                      strtTime[index],
                                    )
                                  ],
                                ),
                                subtitle: Column(
                                  children: [
                                    Divider(),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 50),
                                          child: Container(
                                            width: 110,
                                            height: 25,
                                            decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                      blurRadius: 5,
                                                      color: Color.fromARGB(
                                                          255, 232, 226, 176),
                                                      blurStyle:
                                                          BlurStyle.outer)
                                                ],
                                                color: Color.fromARGB(
                                                    255, 225, 218, 149),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5))),
                                            child: Center(
                                              child: Text(
                                                Mega[index],
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.brown,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4),
                                          child: Icon(
                                            CupertinoIcons.bell,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                leading: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        LeadingstTeam[index],
                                        style: GoogleFonts.lemon(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        leadingTeam[index],
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                trailing: Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        trailingStTeam[index],
                                        style: GoogleFonts.lemon(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        trailingTeam[index],
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Colors.white,
                            thickness: 5,
                          );
                        },
                        itemCount: 6),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenMyMatches extends StatelessWidget {
  ScreenMyMatches({super.key});
  List LeadingstTeam = [
    "BVB",
    "DC",
    "RMF",
    "WI",
    "CSK",
    "CL",
  ];
  List leadingTeam = [
    "Dortmund",
    "Delhi",
    "Real Madrid",
    "West Indies",
    "Chennai ",
    " Celtic",
  ];
  List trailingStTeam = [
    "CHE",
    "RR",
    "BFC",
    "IND",
    "GT",
    "LAK",
  ];
  List trailingTeam = [
    "CHELSEA",
    "Rajasthan",
    "Barcelona",
    "India",
    "Gujarat ",
    "Lakers ",
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
  List contest = [
    "1 Team",
    "2 Team 1 Contest",
    "1 Team 1 Contest",
    "1 Team 2 Contest",
    "2 Teams",
    "1 Team"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 160),
              child: Text(
                "Completed",
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
                              children: [Text("Completed")],
                            ),
                            subtitle: Column(
                              children: [Divider(), Text(contest[index])],
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
        ));
  }
}

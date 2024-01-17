import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenChat extends StatelessWidget {
  ScreenChat({super.key});
  List chatteam = [
    "Guide Picker",
    "Selected Champions",
    "MY 11s",
  ];
  List MatchBoard = [
    "CHE vs GT Top Rankers",
    "MUN vs TOT Top Rankers",
    "IND vs JAP  Top Rankers"
  ];
  List TrailDate = ["22/3/23", "4/8/23", "13/12/23"];
  List LeaderBoard = [
    " No Active Leaderboard",
    " No Active Leaderboard",
    " Arshad Won The Match"
  ];
  List avatatPhoto = [
    "Assets/dream11 team.jpeg",
    "Assets/dre111.jpg",
    "Assets/dreamteam.png"
  ];
  List suggestName = [
    "Kh3lo11",
    "Chakde India",
    "Williamson22",
  ];
  List Skill = ["678", "764", "963"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all()),
                    child: ListTile(
                      title: Text(
                        chatteam[index],
                        style: GoogleFonts.arimo(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(avatatPhoto[index]),
                        backgroundColor: Colors.black,
                      ),
                      subtitle: Column(
                        children: [
                          Text(MatchBoard[index]),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 231, 228, 228),
                                border: Border(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 300,
                            height: 30,
                            child: Row(
                              children: [
                                Icon(Icons.leaderboard),
                                SizedBox(
                                  width: 10,
                                ),
                                Center(child: Text(LeaderBoard[index])),
                              ],
                            ),
                          )
                        ],
                      ),
                      trailing: Text(TrailDate[index]),
                      onTap: () {},
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 3),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text(
                "Suggested People",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130),
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    label: Text(
                      "View All",
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    suggestName[index],
                    style: GoogleFonts.averageSans(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text("Skill Score:${Skill[index]}"),
                  trailing: Container(
                    height: 30,
                    decoration: BoxDecoration(border: Border.all()),
                    child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          "MESSAGE",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 3),
        )
      ],
    ));
  }
}

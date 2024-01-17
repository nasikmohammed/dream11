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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 109, 9, 1),
            child:

                //............................................................................Tab Bar
                TabBar(
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    indicatorColor: Colors.white,
                    unselectedLabelColor: Color.fromARGB(255, 155, 149, 149),
                    labelColor: Color.fromARGB(255, 0, 0, 0),
                    tabs: [
                  Tab(
                    text: "Cricket",
                    icon: Icon(
                      Icons.sports_cricket_sharp,
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.sports_kabaddi),
                    text: 'Kabadi',
                  ),
                  Tab(
                    icon: Icon(Icons.sports_baseball_outlined),
                    text: 'Football',
                  ),
                ]),
          ),
          Expanded(
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
                                    color: Colors.amber,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
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
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  ListTile(
                    subtitle: Text("nasikmohammed"),
                    onTap: () {},
                    title: Text("MATCH"),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 10,
                  );
                },
                itemCount: 6),
          ),
        ],
      ),
    ));
  }
}

import 'dart:io';

import 'package:dream11_project/BottomNavigation/ScreenBottomHome.dart';
import 'package:dream11_project/BottomNavigation/ScreenChat.dart';

import 'package:dream11_project/BottomNavigation/ScreenReward.dart';
import 'package:dream11_project/BottomNavigation/ScreenWinners.dart';
import 'package:dream11_project/BottomNavigation/screenMyMatches.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class ScreenHome extends StatefulWidget {
  ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  File? images;
  String fermin = "Assets/ferminLopez.jpeg";
  int intexNumber = 0;
  final _pages = [
    ScreenHomeBottom(),
    ScreenMyMatches(),
    ScreenReward(),
    ScreenChat(),
    Screenwinners()
  ];

  final now = DateTime(2024, 01, 1, 9, 15);
  final formatttter = DateFormat("EEEE");

  @override
  Widget build(BuildContext context) {
    final formatedtime = formatttter.format(now);

    print(formatedtime);
    print(now);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: _pages[intexNumber]),
          ],
        ),
        //.........................................................................Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: intexNumber,
            onTap: (value) {
              setState(() {
                intexNumber = value;
                print(intexNumber);
              });
            },
            selectedItemColor: Color.fromARGB(255, 109, 9, 1),
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.sports), label: "My Matches"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.gift), label: "Rewards"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_outlined), label: "Chat"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.palette_sharp), label: "Winners"),
            ]),
        //...............................................................................AppBar

        appBar: AppBar(
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.bell),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.wallet))
            ],
            title: Text("Dream11", style: GoogleFonts.arbutus()),
            backgroundColor: Color.fromARGB(255, 109, 9, 1),
            centerTitle: false,
            leading: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 10,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(fermin),
                    )),
                Positioned(
                    left: 28,
                    top: 27,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.white,
                    )),
                Builder(
                  builder: (context) {
                    return Positioned(
                      left: 16,
                      top: 16,
                      child: IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: Colors.black,
                          )),
                    );
                  },
                )
              ],
            )),
        //.....................................................................Drawer
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 255, 254, 254),
          child: Container(
            color: Color.fromARGB(255, 235, 232, 232),
            child: Column(
              children: [
                Stack(
                  children: [
                    DrawerHeader(
                        child: Container(
                            width: 300,
                            child: ListTile(
                              onTap: () {
                                print("gttytt");
                              },
                              leading: Stack(
                                children: [
                                  CircleAvatar(
                                      child: Container(
                                    width: 50,
                                    child: images == null
                                        ? CircleAvatar(
                                            backgroundImage: AssetImage(fermin))
                                        : Image.file(
                                            images!,
                                            fit: BoxFit.fitWidth,
                                          ),
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, right: 10),
                                    child: TextButton.icon(
                                        label: Text("Edit Profile"),
                                        onPressed: () {
                                          imagePickerFun();
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        )),
                                  )
                                ],
                              ),
                              title: SizedBox(
                                height: 50,
                                child: Text(
                                  "Glamour Champion",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                              subtitle: Text(
                                "Skill Score: 631",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        decoration: BoxDecoration(color: Colors.black)),
                    Container(
                      child:
                          TextButton(onPressed: () {}, child: Text("ADD CASH")),
                      margin: EdgeInsets.only(left: 30, top: 190, right: 30),
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 5)
                          ],
                          color: Color.fromARGB(255, 207, 233, 208),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 150),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: 300,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Icon(Icons.wallet_rounded),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "My Balance",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.currency_rupee,
                                      color: Colors.black,
                                    ),
                                    label: Text(
                                      "49",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Color.fromARGB(255, 235, 232, 232),
                  thickness: 16,
                ),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  child: ListTile(
                    onTap: () {
                      print("refer Button Clicked");
                    },
                    leading: Icon(CupertinoIcons.person_add),
                    title: Text("Refer & Earn"),
                  ),
                ),
                SizedBox(
                  height: .9,
                ),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.settings),
                    title: Text("My Info & Settings"),
                  ),
                ),
                Divider(
                  color: Color.fromARGB(255, 235, 232, 232),
                  thickness: 10,
                ),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.headset_mic_outlined),
                    title: Text("Help & Support"),
                  ),
                ),
                SizedBox(
                  height: .9,
                ),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.videogame_asset),
                    title: Text("How to Play"),
                  ),
                ),
                SizedBox(
                  height: .9,
                ),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  child: ListTile(
                    onTap: () {},
                    leading: Icon(Icons.more_horiz),
                    title: Text("More"),
                  ),
                ),
                Container(
                  width: 500,
                  height: 25,
                  color: Color.fromARGB(255, 235, 232, 232),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7, left: 15),
                    child: Text("More From Dream Sports"),
                  ),
                ),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  child: ListTile(
                    onTap: () {},
                    title: Text(
                      "FanCode Shop",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("SuperFan Collection upto 80% off"),
                    leading:
                        Icon(CupertinoIcons.ant_fill, color: Colors.orange),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  imagePickerFun() async {
    final PickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (PickedImage != null) {
      setState(() {
        images = File(PickedImage.path);
      });
    }
  }
}

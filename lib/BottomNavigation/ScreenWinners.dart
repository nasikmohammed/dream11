import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Screenwinners extends StatelessWidget {
  const Screenwinners({super.key});

  @override
  Widget build(BuildContext context) {
    List CircleAvatats = [
      "Assets/pr1.jpg",
      "Assets/pr2.jpeg",
      "Assets/pr3.jpeg",
      "Assets/pr4.jpeg",
      "Assets/pr5.webp",
      "Assets/pr6.jpeg",
    ];
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: 100,
            color: Colors.red,
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
        Text("ugygtg")
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "My ",
                  style: GoogleFonts.lemon(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      letterSpacing: 3),
                ),
                Text(
                  "Team ",
                  style: GoogleFonts.mooLahLah(
                      fontSize: 55,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 189, 51, 46),
                      letterSpacing: 5),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Text("Solutions",
                  style: TextStyle(
                    letterSpacing: 7,
                    fontSize: 23,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

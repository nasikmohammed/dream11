import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

import 'package:dream11_project/LOGINscreen/RegisterScreen.dart';

import 'package:dream11_project/ScreenHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    delayed(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 400,
            height: 600,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 139, 3, 3),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400, left: 0, right: 0),
            child: Container(
              width: 600,
              height: 600,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(200))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 30),
            child: Text(
              "SporTech",
              style: GoogleFonts.happyMonkey(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

delayed(context) async {
  await Future.delayed(Duration(seconds: 3));
  getvalue(context);
}

getvalue(context) async {
  final _sharedprefs = await SharedPreferences.getInstance();
  final mobile = _sharedprefs.getString("phone");
  final mail = _sharedprefs.getString("email");
  final passwordd = _sharedprefs.getString("password");
  if (mobile != null && mail != null && passwordd != null) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return ScreenHome();
      },
    ));
  } else {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return ScreenRegister();
      },
    ));
  }
}

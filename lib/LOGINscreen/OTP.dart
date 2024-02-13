import 'package:dream11_project/ScreenHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class ScreenOtp extends StatelessWidget {
  String? number;
  ScreenOtp({required this.number});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
          child: Stack(
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
                          Padding(
                            padding: const EdgeInsets.only(right: 110),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(Icons.lock),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Mobile Phone Verification",
                            style: GoogleFonts.abrilFatface(
                                fontSize: 30,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300, left: 0, right: 0),
                child: Container(
                  width: 600,
                  height: 600,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(200))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      Text(
                        "Enter the Code we Send to \n     Your mobile number ",
                        style: TextStyle(
                            wordSpacing: 1,
                            color: Color.fromARGB(255, 25, 37, 103),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        number!,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OTPTextField(
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 50,
                        style: TextStyle(fontSize: 17),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        onCompleted: (pin) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) {
                              return ScreenHome();
                            },
                          ));
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Resend OTP in ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          TimerCountdown(
                            timeTextStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                decoration: TextDecoration.none),
                            format: CountDownTimerFormat.secondsOnly,
                            endTime: DateTime.now().add(
                              Duration(
                                seconds: 21,
                              ),
                            ),
                            onEnd: () {
                              print("Timer finished");
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

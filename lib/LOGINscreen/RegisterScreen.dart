import 'package:dream11_project/LOGINscreen/OTP.dart';
import 'package:dream11_project/ScreenHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_widget/ticket_widget.dart';

class ScreenRegister extends StatelessWidget {
  ScreenRegister({super.key});
  final _mobileno = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  //String _errormessage = "";

  @override
  Widget build(BuildContext context) {
    final RegExp regxp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    final RegExp phonergxp = RegExp(r'^[0-9]{10}$');
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 36),
            child: Form(
              key: _formKey,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 240, left: 10),
                    child: Icon(
                      Icons.sign_language_outlined,
                      size: 470,
                      color: Color.fromARGB(255, 217, 217, 220),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Column(
                          children: [
                            Text(
                              "SporTech",
                              style: GoogleFonts.happyMonkey(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.sports)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      TextFormField(
                          controller: _mobileno,
                          validator: (value) {
                            if (phonergxp.hasMatch(_mobileno.text)) {
                              return null;
                            } else if (value!.isEmpty) {
                              return "Required";
                            } else {
                              return "Invalid PhoneNumber";
                            }
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Mobile no",
                              helperText:
                                  "You will recieve an OTP for verification")),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          controller: _email,
                          validator: (value) {
                            if (regxp.hasMatch(_email.text)) {
                              return null;
                            } else if (value!.isEmpty) {
                              return "Required ";
                            } else {
                              return "Invalid Email adress";
                            }
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Email",
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _password,
                        validator: (value) {
                            if (value!.isEmpty) {
                            return " empty";
                            } else if (!value.contains(RegExp(r'[a-z]'))) {
                              return  "Lower Letter Is Missing";
                            } else if (!value.contains(RegExp(r'[0-9]'))) {
                              return  "Digit Is Missing";
                            } else if (!value.contains(RegExp(r'[!@#%^&*]'))) {
                              return  "Special Charecter Is Missing";
                            } else if (value.length < 6) {
                              return 
                                  " Password must be longer than 6 charecter";
                            }
                            if (!value.contains(RegExp(r'[A-Z]'))) {
                              return  "Uppercase Letter Is Missing";
                            }
                            return null;
 
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password",
                        ),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      SizedBox(
                        height: 50,
                        width: 100,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 19, 68, 21),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return ScreenOtp(
                                      number: _mobileno.text,
                                    );
                                  },
                                ));
                              }
                            },
                            child: Text(
                              "Login",
                              style: GoogleFonts.holtwoodOneSc(
                                  color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
////////////////////////////////validation<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
/// validator: (value) {
                          //   if (value!.isEmpty) {
                          //     _errormessage = " empty";
                          //   } else if (!value.contains(RegExp(r'[a-z]'))) {
                          //     _errormessage = "Lower Letter Is Missing";
                          //   } else if (!value.contains(RegExp(r'[0-9]'))) {
                          //     _errormessage = "Digit Is Missing";
                          //   } else if (!value.contains(RegExp(r'[!@#%^&*]'))) {
                          //     _errormessage = "Special Charecter Is Missing";
                          //   } else if (value.length < 6) {
                          //     _errormessage =
                          //         " Password must be longer than 6 charecter";
                          //   }
                          //   if (!value.contains(RegExp(r'[A-Z]'))) {
                          //     _errormessage = "Uppercase Letter Is Missing";
                          //   }
                          //   return _errormessage;
                          // },
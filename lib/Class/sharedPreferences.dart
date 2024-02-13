import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';

String usernames = "";

class ScreenSharedPref extends StatefulWidget {
  ScreenSharedPref({super.key});

  @override
  State<ScreenSharedPref> createState() => _ScreenSharedPrefState();
}

class _ScreenSharedPrefState extends State<ScreenSharedPref> {
  @override
  Widget build(BuildContext context) {
    final _usernameController = TextEditingController();
    final _ageController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TextField(
            onChanged: (value) {
              initState() {
                getValue();
                print(usernames);
              }
            },
            decoration: InputDecoration(hintText: "Username"),
            controller: _usernameController,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Age"),
            controller: _ageController,
          ),
          TextButton(
              onPressed: () {
                print(usernames);
              },
              child: Text("login"))
        ],
      )),
    );
  }
}

setValue(value) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString("Username", value);
  prefs.setInt("Age", value);
}

getValue() async {
  final prefs = await SharedPreferences.getInstance();
  usernames = prefs.getString("Username")!;
  prefs.getInt("Age");
}

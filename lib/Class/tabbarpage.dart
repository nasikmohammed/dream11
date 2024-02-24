import 'dart:io';

import 'package:dream11_project/BottomNavigation/ScreenChat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({super.key});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  // File? image;
  File? Photoes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            const TabBar(
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text("1"),
                    icon: Icon(Icons.abc),
                  ),
                  Tab(
                    child: Text("2"),
                    icon: Icon(Icons.abc),
                  ),
                  Tab(
                    child: Text("3"),
                    icon: Icon(Icons.abc),
                  ),
                  Tab(
                    child: Text(
                      "4",
                    ),
                    icon: Icon(Icons.abc),
                  )
                ]),
            Expanded(
              child: TabBarView(children: [
                ScreenChat(),
                Container(
                  color: Colors.green,
                  child: Center(
                    child: ElevatedButton(
                        onPressed: () {
                          // pickImage();
                          photoesPicker();
                        },
                        child: const Text("pick image")),
                  ),
                  // height: 200,
                  // width: 200,
                ),
                Container(
                    child: Photoes == null ? SizedBox() : Image.file(Photoes!)),
                // Container(
                //     // height: 200,
                //     // width: 200,
                //     color: Colors.black,
                //     child: Center(
                //    //     child: image == null
                //             ? Container(
                //                 color: Colors.red,
                //                 height: 30,
                //                 width: 30,
                //               )
                //       //     : Image.file(image!))),
                // Container(
                //   // height: 200,
                //   // width: 200,
                //   color: Colors.blue,
                // ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  // pickImage() async {

  //   final pickedImage =
  //       await ImagePicker().pickImage(source: ImageSource.camera);
  //   if (pickedImage != null) {
  //     setState(() {
  //       image = File(pickedImage.path);
  //     });
  //   }
  // }
  // pickImage() async {
  //   try {
  //     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  //     if (image == null) return;
  //     final imageTemp = File(image.path!);
  //     print(imageTemp);
  //     setState(() => this.image = imageTemp);
  //   } on PlatformException catch (e) {
  //     print('Failed to pick image: $e');
  //   }
  // }
  photoesPicker() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        Photoes = File(pickedImage.path);
      });
    }
  }
}

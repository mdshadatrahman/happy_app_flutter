import 'package:codecell_happy_app/screens/upload_photos.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class intro_claim extends StatefulWidget {
  @override
  _intro_claimState createState() => _intro_claimState();
}

class _intro_claimState extends State<intro_claim> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height / 5,
            ),
            Center(
              child: Image.asset(
                'assets/images/illustration.jpg',
              ),
            ),
            Text(
              "Upload Selfie/Food/Product/Service photo",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "+",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Uplaod Bill Photo",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "=",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              "Points",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(upload_photo());
                },
                child: Container(
                  width: width / 2,
                  height: height / 25,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(
                    "Got it",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

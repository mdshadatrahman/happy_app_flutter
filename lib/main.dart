import 'package:codecell_happy_app/screens/homepage.dart';
import 'package:codecell_happy_app/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomBottomNavigationBar(),
    );
  }
}

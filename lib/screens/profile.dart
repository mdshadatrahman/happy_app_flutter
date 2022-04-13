import 'package:codecell_happy_app/screens/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 219, 219, 219),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            height: height * 0.3, //!container color
            child: Stack(
              children: [
                Container(
                  height: height * 0.25,
                  width: width,
                  child: Image.network(
                    'https://us.123rf.com/450wm/tbralnina/tbralnina1904/tbralnina190400284/120959659-traditional-moroccan-tajine-of-chicken-with-salted-lemons-olives-top-view-.jpg?ver=6',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: height * 0.19,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.193,
                  left: width * 0.008,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 37,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.22,
                  left: width * 0.65,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => EditProfileScreen());
                    },
                    child: Text(
                      'EDIT PROFILE',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.04, top: height * 0.01),
            child: Text(
              'Abir Rahman',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.04, top: height * 0.01),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      'Male',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: width * 0.01),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      '13-04-2022',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: width * 0.01),
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Text(
                      'Naraynganj',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Reviews',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Reviews',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: height * 0.03),
          Container(
            height: height * 0.05,
            width: width,
            color: Color.fromARGB(255, 223, 223, 223),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.04),
                child: Row(
                  children: [
                    Text('REVIEWS'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.05),
          Center(
            child: Column(
              children: [
                Container(
                  height: width * 0.2,
                  width: width * 0.2,
                  child: Image.asset('assets/images/noreview.png'),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  'No Reviews',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

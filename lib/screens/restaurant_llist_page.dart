import 'package:codecell_happy_app/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

import '../utils/Colors.dart';
import '../utils/Colors.dart';

List<String> restaurantsName = [
  'Shawrma Street',
  'Autograph Restaurant',
  'Nerdy Been Coffee Haus',
  'Trump Cafe',
  'Biya Bari Restaurant',
  'Cafe Euphoria Dhanmondi',
  'Garlic\'n Ginger',
  'Cafe Euphoria Banani',
  'Rice & Noodle Uttara',
];
List<String> restaurantsAddress = [
  'New Baily Road',
  'New Baily Road',
  'Dhanmondi 2A',
  'zigatola Bus Stand',
  'Dhanmondi',
  'Zigatola Bus Stand',
  'Jamuna Future Park',
  'Dhanmondi',
  'Dhanmondi',
];
List<String> pictureUrl = [
  'assets/images/trump2.png',
  'assets/images/coffee.jpeg',
  'assets/images/euphoria.png',
  'assets/images/shawrma.jpeg',
  'assets/images/trump.png',
  'assets/images/trump2.png',
  'assets/images/trump2.png',
  'assets/images/coffee.jpeg',
  'assets/images/shawrma.jpeg',
];

class RestaurantsList extends StatefulWidget {
  const RestaurantsList({Key? key}) : super(key: key);

  @override
  State<RestaurantsList> createState() => _RestaurantsListState();
}

class _RestaurantsListState extends State<RestaurantsList> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: NewGradientAppBar(
          title: const Text(
            'Restaurants',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff318AC4),
              Color(0xff4CA37C),
            ],
          ),
        ),
        body: InkWell(
          onTap: () {
            Get.to(() => details());
          },
          child: ListView.builder(
            itemCount: restaurantsName.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: height * 0.12,
                width: width * 0.7,
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(height * 0.01),
                            child: Container(
                              height: width * 0.150,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(pictureUrl[index]),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: height * 0.025),
                                child: Text(
                                  restaurantsName[index],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Text(
                                restaurantsAddress[index],
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textcolor,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: height * 0.005),
                                child: Text(
                                  'Upto 30 points',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: AppColors.blackH2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 1,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: height * 0.025,
                        width: width * 0.12,
                        child: Center(
                          child: Text(
                            '5.00⭑',
                            style: TextStyle(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

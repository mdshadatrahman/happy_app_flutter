import 'package:carousel_slider/carousel_slider.dart';
import 'package:codecell_happy_app/screens/add_voucher_coupon.dart';
import 'package:codecell_happy_app/screens/buy_coupons.dart';
import 'package:codecell_happy_app/screens/details.dart';
import 'package:codecell_happy_app/screens/get_points.dart';
import 'package:codecell_happy_app/screens/history_page_pointsstamps.dart';
import 'package:codecell_happy_app/screens/points_page.dart';
import 'package:codecell_happy_app/screens/profile.dart';
import 'package:codecell_happy_app/screens/received_coupons.dart';
import 'package:codecell_happy_app/screens/restaurant_llist_page.dart';
import 'package:codecell_happy_app/screens/restaurants_page.dart';
import 'package:codecell_happy_app/screens/tabbar_test.dart';
import 'package:codecell_happy_app/screens/tasks_page.dart';
import 'package:codecell_happy_app/utils/Colors.dart';
import 'package:codecell_happy_app/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../widgets/custom_bottom_navigation.dart';
import 'buy_coupon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  var selected = false;

  TabController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CustomBottomNavigationBar(),
          ),
        );
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          drawer: CustomDrawer(height: height, width: width),
          key: _key,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    //Top Background
                    Stack(
                      children: [
                        Container(
                          height: height / 3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xff318AC4),
                                Color(0xff4CA37C),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: height / 6),
                          child: ClipPath(
                            clipper: WaveClipperOne(
                              flip: true,
                              reverse: true,
                            ),
                            child: Container(
                              height: height / 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0x4200FF66),
                                    Color(0x15254864),
                                    // Colors.red,
                                    // Colors.green,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: width / 15,
                        right: width / 15,
                        top: height / 35,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  _key.currentState!.openDrawer();
                                },
                                child: Icon(
                                  Icons.sort,
                                  color: Colors.white,
                                  size: 36,
                                ),
                              ),
                              Text(
                                'Total Points 100',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => ProfileScreen());
                                },
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: height / 15),
                          //Search bar

                          Container(
                            height: height / 17,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    top: height * 0.001,
                                    left: width * 0.05,
                                  ),
                                  height: height / 13,
                                  width: width / 1.6,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search',
                                      hintStyle: TextStyle(
                                        color: Color(0x456C8B80),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: width * 0.05),
                                Icon(
                                  Icons.search,
                                  size: 30,
                                  color: AppColors.blackH1,
                                ),
                                SizedBox(width: width * 0.01),
                                Icon(
                                  Icons.tune,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    //Three Boxes
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: height / 3.75,
                        ),
                        child: Stack(
                          children: [
                            //Box1
                            GestureDetector(
                              onTap: () {
                                Get.to(() => TasksPage());
                              },
                              child: Container(
                                height: height * 0.115,
                                width: width * 0.3,
                                decoration: BoxDecoration(
                                  color: Color(0xffF7931A),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: height * 0.05,
                                      width: height * 0.05,
                                      margin: EdgeInsets.only(
                                        bottom: 10,
                                        right: width * 0.025,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xff3A260D).withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(width * 0.03),
                                        child: SvgPicture.asset(
                                            'assets/images/uparrow.svg'),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        // bottom: 10,
                                        right: width * 0.025,
                                      ),
                                      child: Text(
                                        'Tasks',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //Box 2
                            GestureDetector(
                              onTap: () {
                                Get.to(() => PointsPage());
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: width * 0.22,
                                ),
                                child: Container(
                                  height: height * 0.115,
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1F65AB),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: height * 0.05,
                                        width: height * 0.05,
                                        margin: EdgeInsets.only(
                                          bottom: 10,
                                          right: width * 0.025,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(13),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(width * 0.03),
                                          child: SvgPicture.asset(
                                              'assets/images/uparrow.svg'),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                          // bottom: 10,
                                          right: width * 0.025,
                                        ),
                                        child: Text(
                                          'Points',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //Box3
                            GestureDetector(
                              onTap: () {
                                Get.to(() => HistoryPage());
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: width * 0.44,
                                ),
                                child: Container(
                                  height: height * 0.115,
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                    color: Color(0xff462DAB),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: height * 0.05,
                                        width: height * 0.05,
                                        margin: EdgeInsets.only(
                                          bottom: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.2),
                                          borderRadius:
                                              BorderRadius.circular(13),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(width * 0.03),
                                          child: SvgPicture.asset(
                                            'assets/images/uparrow.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'History',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: height * 0.05),
                Container(
                  padding: EdgeInsets.only(
                    left: width / 15,
                    right: width / 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(() => get_points());
                            },
                            child: Container(
                              width: width * 0.4,
                              height: height * 0.12,
                              decoration: BoxDecoration(
                                color: Color(0xffE5E8EE),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.local_atm,
                                    size: 30,
                                    color: Color.fromARGB(255, 185, 81, 40),
                                  ),
                                  Text(
                                    'Get Points',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 185, 81, 40),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 1,
                            width: width * 0.3,
                            color: Color(0xffF7931A),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(
                                () => buy_coupons(),
                              );
                            },
                            child: Container(
                              width: width * 0.4,
                              height: height * 0.12,
                              decoration: BoxDecoration(
                                color: Color(0xffE5E8EE),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.local_activity_outlined,
                                    size: 30,
                                    color: Color.fromARGB(255, 185, 81, 40),
                                  ),
                                  Text(
                                    'Buy Voucher/Coupon',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 185, 81, 40),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 1,
                            width: width * 0.3,
                            color: Color(0xffEE85FF),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.035),
                //Our offers
                Padding(
                  padding: EdgeInsets.only(
                    left: width / 15,
                  ),
                  child: Text(
                    'Our offers',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackH1,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),

                //Discount field
                GestureDetector(
                  onTap: () {
                    Get.to(() => details());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 7,
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        scrollDirection: Axis.horizontal,
                        scrollPhysics: AlwaysScrollableScrollPhysics(),
                        height: 200,
                        autoPlay: true,
                        reverse: true,
                        enlargeCenterPage: true,
                        viewportFraction: 0.9,
                      ),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Container(
                        height: height / 5,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/offerImage.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        // child: InkWell(
                        //
                        //     onTap: ()async{
                        //       // var url=snapshot.data[itemIndex]['links'];
                        //       // if (await canLaunch(url))
                        //       //   await launch(url);
                        //       // else
                        //       //   // can't launch url, there is some error
                        //       //   throw "Could not launch $url";
                        //     },
                        //     child:Image.asset('assets/images/b.jpg',width: width,))
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.035),
                Padding(
                  padding: EdgeInsets.only(
                    left: width / 15,
                  ),
                  child: Text(
                    'Categories For You',
                    style: TextStyle(
                      color: AppColors.blackH1,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.015),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: width / 15, bottom: width / 15),
                    child: Row(
                      children: [
                        //Restaurants
                        GestureDetector(
                          onTap: () {
                            Get.to(() => RestaurantsList());
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: height * 0.02),
                            child: Container(
                              height: width * 0.3,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 146, 146, 146),
                                    blurRadius: 1.0,
                                    spreadRadius: 0.0,
                                    offset: Offset(
                                      1.0,
                                      1.0,
                                    ), // shadow direction: bottom right
                                  )
                                ],
                                // color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    //TODO: how to refine the gradient property
                                    Color.fromARGB(255, 247, 164, 145),
                                    Color(0xffF5F5F5),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: width * 0.15,
                                      width: width * 0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Color(0xffE5EDFF),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/2927/2927347.png',
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: height * 0.01),
                                    Text(
                                      'Restaurants',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 241, 92, 75),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width / 15),
                        //Groceries
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.02),
                          child: Container(
                            height: width * 0.3,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 146, 146, 146),
                                  blurRadius: 1.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(
                                    1.0,
                                    1.0,
                                  ), // shadow direction: bottom right
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  //TODO: how to refine the gradient property
                                  Color.fromARGB(255, 218, 231, 164),
                                  Color(0xffF5F5F5),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: width * 0.15,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color(0xffE5EDFF),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/2927/2927347.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.01),
                                  Text(
                                    'Groceries',
                                    style: TextStyle(
                                      color: Color(0xff80A100),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width / 15),
                        //Food Delivery
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.02),
                          child: Container(
                            height: width * 0.3,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 146, 146, 146),
                                  blurRadius: 1.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(
                                    1.0,
                                    1.0,
                                  ), // shadow direction: bottom right
                                )
                              ],
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  //TODO: how to refine the gradient property
                                  Color.fromARGB(255, 245, 230, 190),
                                  Color(0xffF5F5F5),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: width * 0.15,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color(0xffE5EDFF),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.network(
                                        'https://cdn-icons-png.flaticon.com/512/2927/2927347.png',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: height * 0.01),
                                  Text(
                                    'Restaurants',
                                    style: TextStyle(
                                      color: Color(0xffF7CA49),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: width / 15),
                      ],
                    ),
                  ),
                ),

                //Nearby Merchants
                Padding(
                  padding: EdgeInsets.only(left: width / 15),
                  child: Text(
                    'Nearby Merchants',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.015),
                //!Nearby Merchants tile
                NearbyMerchantsTile(width: width, height: height),
                NearbyMerchantsTile(width: width, height: height),
                SizedBox(height: height * 0.015),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NearbyMerchantsTile extends StatelessWidget {
  const NearbyMerchantsTile({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => details());
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width / 15,
          vertical: height * 0.015,
        ),
        child: Stack(
          children: [
            Container(
              height: height * 0.15,
              width: width * 0.9,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/uberEats.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //? 35 happy points
            //TODO: Needs to fix the vector
            Padding(
              padding: EdgeInsets.only(top: height * 0.03),
              child: Container(
                height: height * 0.025,
                width: width * 0.6,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff2C3659),
                      Color(0xff33A4BB),
                      Color(0xffEE786B),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: width * 0.02),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '3% Happi Points | Upto 20 points',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

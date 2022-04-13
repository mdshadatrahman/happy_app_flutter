import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import '../utils/Colors.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> tasks = [
      'You got for liking this page',
      'You got for commenting',
      'You got for sharing',
      'You won for subscribing'
    ];
    List<String> points = [
      '10',
      '20',
      '15',
      '10',
    ];
    List<String> pictureUrl = [
      'assets/images/page1.jpeg',
      'assets/images/page2.jpeg',
      'assets/images/youtube.png',
      'assets/images/youtube2.jpeg',
    ];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    var selected = false;
    return SafeArea(
      child: Scaffold(
        key: _key,
        backgroundColor: const Color(0xffFAF9F9),
        appBar: NewGradientAppBar(
          title: Text(
            'History',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          actions: [
            Icon(
              Icons.search,
              color: AppColors.white,
              size: 35,
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80',
              ),
            ),
            SizedBox(width: width / 15)
          ],
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff318AC4),
              Color(0xff4CA37C),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width / 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 213, 214, 218),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(3, 5),
                      ),
                    ],
                  ),
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 10.0,
                        color: Color(0xff3756CF),
                      ),
                    ),
                    tabs: [
                      SizedBox(
                        height: height * 0.07,
                        width: width * 0.4,
                        child: const Center(
                          child: Text(
                            'All',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffE37A29),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.07,
                        width: width * 0.4,
                        child: const Center(
                          child: Text(
                            'Bill Claim',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffE37A29),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.07,
                        width: width * 0.4,
                        child: const Center(
                          child: Text(
                            'Points/Stamps',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffE37A29),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Main Body
              SizedBox(
                height: height,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: height * 0.10,
                              width: width,
                              child: Padding(
                                padding: EdgeInsets.only(right: width * 0.05),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.all(height * 0.01),
                                          child: Container(
                                            height: width * 0.150,
                                            width: width * 0.15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  pictureUrl[index],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.025),
                                              child: Text(
                                                tasks[index],
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  points[index],
                                                  style: const TextStyle(
                                                    fontSize: 16,
                                                    color: AppColors.orange,
                                                  ),
                                                ),
                                                Text(
                                                  " points",
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),

                                    //Stamps
                                    InkWell(
                                      onTap: () {
                                        // Get.to(() => details());
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.green,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        height: height * 0.025,
                                        width: width * 0.12,
                                        child: Center(
                                          child: Text(
                                            'Claim',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black54,
                            )
                          ],
                        );
                      },
                    ),

                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: height * 0.10,
                              width: width,
                              child: Padding(
                                padding: EdgeInsets.only(right: width * 0.05),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.all(height * 0.01),
                                          child: Container(
                                            height: width * 0.150,
                                            width: width * 0.15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  pictureUrl[index],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.025),
                                              child: Text(
                                                tasks[index],
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  points[index],
                                                  style: const TextStyle(
                                                    fontSize: 16,
                                                    color: AppColors.orange,
                                                  ),
                                                ),
                                                Text(
                                                  " points",
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),

                                    //Stamps
                                    InkWell(
                                      onTap: () {
                                        // Get.to(() => details());
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.green,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        height: height * 0.025,
                                        width: width * 0.12,
                                        child: Center(
                                          child: Text(
                                            'Claim',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black54,
                            )
                          ],
                        );
                      },
                    ),

                    //Stamps
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: tasks.length,
                      itemBuilder: (_, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: height * 0.10,
                              width: width,
                              child: Padding(
                                padding: EdgeInsets.only(right: width * 0.05),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.all(height * 0.01),
                                          child: Container(
                                            height: width * 0.150,
                                            width: width * 0.15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    pictureUrl[index]),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: height * 0.025,
                                              ),
                                              child: Text(
                                                tasks[index],
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  points[index],
                                                  style: const TextStyle(
                                                    fontSize: 20,
                                                    color: AppColors.orange,
                                                  ),
                                                ),
                                                Text(
                                                  " Stamps",
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 1,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // Get.to(() => details());
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.green,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        height: height * 0.025,
                                        width: width * 0.12,
                                        child: Center(
                                          child: Text(
                                            'Claim',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black54,
                            )
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: InkWell(
          onTap: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                elevation: 10,
                context: context,
                builder: (context) {
                  return StatefulBuilder(builder: (context, setState) {
                    return SingleChildScrollView(
                      child: Container(
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(30.0),
                              topRight: const Radius.circular(30.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Filter",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.restaurant,
                                          color: Colors.teal,
                                        ),
                                        Text(
                                          " Restaurant",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Checkbox(
                                      value: selected,
                                      onChanged: (v) {
                                        setState(() {
                                          selected = v!;
                                        });
                                      })
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.restaurant,
                                          color: Colors.teal,
                                        ),
                                        Text(
                                          " Grocieries",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Checkbox(
                                      value: selected,
                                      onChanged: (v) {
                                        setState(() {
                                          selected = v!;
                                        });
                                      })
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.restaurant,
                                          color: Colors.teal,
                                        ),
                                        Text(
                                          " Food Delivery",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Checkbox(
                                      value: selected,
                                      onChanged: (v) {
                                        setState(() {
                                          selected = v!;
                                        });
                                      })
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.restaurant,
                                          color: Colors.teal,
                                        ),
                                        Text(
                                          " Online Shop",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Checkbox(
                                      value: selected,
                                      onChanged: (v) {
                                        setState(() {
                                          selected = v!;
                                        });
                                      })
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: width,
                                    height: height / 25,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Apply Filter',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              )
                            ],
                          )),
                    );
                  });
                });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.filter_list,
                    color: Colors.white,
                  ),
                  Text(
                    '  Filter  ',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EarnPointsWidget extends StatelessWidget {
  const EarnPointsWidget({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: width / 15,
        right: width / 15,
        top: height * 0.03,
      ),
      child: Container(
        width: width * 1,
        height: height * 0.09,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffEFF1FF).withOpacity(0.75),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 174, 226, 241),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Image.asset('assets/images/foodpanda.png'),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Review this item for',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        '10 ',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffE37A29),
                        ),
                      ),
                      Text(
                        'points !',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

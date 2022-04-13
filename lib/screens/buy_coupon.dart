import 'package:carousel_slider/carousel_slider.dart';
import 'package:codecell_happy_app/screens/voucher_purchase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class buy_coupons extends StatefulWidget {
  @override
  _buy_couponsState createState() => _buy_couponsState();
}

class _buy_couponsState extends State<buy_coupons> {
  List names = [
    "Resturent",
    "Groceries",
    "Food Delivery",
    "Utility",
    "Resturent",
    "Groceries",
    "Food Delivery",
    "Utility",
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Buy Voucher Coupons",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text(
              "Voucher /  Coupons Catagories".toUpperCase(),
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            )),
            Container(
              height: height / 9,
              width: width,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                AssetImage('assets/images/food.png'),
                          ),
                          Text(names[index])
                        ],
                      ),
                    );
                  }),
            ),
            Divider(
              color: Colors.black54,
            ),
            Container(
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
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  height: height / 5,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/offer.jpeg'),
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
            Divider(
              color: Colors.black54,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Trending Vouchers".toUpperCase(),
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: height / 3.8,
              width: width,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => VoucherPurchase());
                          // Navigator.push(context, MaterialPageRoute(builder: (_)=>details()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height / 9,
                                width: width / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/offer.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Buy 2 Get 1 ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "The Rio Lounge ",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "BDT 200 ",
                                          style: TextStyle(
                                              color: Colors.teal,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Save 10 % with points",
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recent Vouchers".toUpperCase(),
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: width,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 4 / 4,
                      crossAxisSpacing: 5,
                      mainAxisExtent: 220,
                      mainAxisSpacing: 0),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => VoucherPurchase());

                          // Navigator.push(context, MaterialPageRoute(builder: (_)=>details()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: height / 9,
                                width: width / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/offer.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Buy 2 Get 1 ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "The Rio Lounge ",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "BDT 200 ",
                                          style: TextStyle(
                                              color: Colors.teal,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Save 10 % with points",
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}

import 'package:codecell_happy_app/screens/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class get_points extends StatefulWidget {
  @override
  _get_pointsState createState() => _get_pointsState();
}

class _get_pointsState extends State<get_points> {
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
  var selected = false;
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
          "Select Merchants for points",
          style: TextStyle(color: Colors.black, fontSize: 18),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 20,
                width: width,
                decoration: BoxDecoration(
                    // image: DecorationImage(image: AssetImage('assets/images/lereve.jpg'),
                    //                   //     fit: BoxFit.cover
                    //                   // ),
                    color: Colors.teal.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.teal),
                        child: Icon(
                          Icons.card_giftcard,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      'Upload Bill picture & get up to 25 points',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 24,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8)),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Search shops by name & address",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Merchants",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: height / 1.2,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 9,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: height * 0.10,
                          width: width,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image:
                                                AssetImage(pictureUrl[index]),
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
                                            'Lereve',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Lereve Streats",
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: height * 0.005),
                                          child: Text(
                                            'Upto 30 points',
                                            style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.teal,
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
                                InkWell(
                                  onTap: () {
                                    Get.to(() => details());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                      borderRadius: BorderRadius.circular(5),
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
                  }),
            )
          ],
        ),
      ),
    ));
  }
}

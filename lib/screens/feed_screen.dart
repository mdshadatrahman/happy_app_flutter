import 'package:codecell_happy_app/utils/Colors.dart';
import 'package:codecell_happy_app/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey();
    List<String> name = [
      'Chowdhury Nahar',
      'Jim Mustafa',
      'Shakawat Ahmed',
      'Rayhan Ahmed'
    ];
    List<String> rastaurant_name = [
      'Pathao Ride',
      'Dhanmondi',
      'Shwapno',
      'Daraz'
    ];
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 240, 240),
        key: _key,
        drawer: CustomDrawer(height: height, width: width),
        appBar: AppBar(
          title: Text('Feed'),
          centerTitle: true,
          backgroundColor: Colors.teal,
          leading: IconButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: Icon(Icons.sort),
          ),
          actions: [
            Icon(Icons.search),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: height,
            child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (_, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height * 0.12,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //!Circle Avatar starts
                                CircleAvatar(),
                                //!Circle Avatar ends
                                SizedBox(width: width * 0.01),
                                //!Name review restaurant name column starts
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    //!Name Review Reataurants Row
                                    Row(
                                      children: [
                                        Text(
                                          name[index],
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(' reviewed '),
                                        Text(
                                          rastaurant_name[index],
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        //!Rating starts

                                        RatingBar.builder(
                                          initialRating: 4,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: false,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 0.5),
                                          itemBuilder: (context, _) =>
                                              Container(
                                            height: height * 0.05,
                                            width: width * 0.3,
                                            child: Icon(
                                              Icons.star,
                                              color: AppColors.material2,
                                              size: 20,
                                            ),
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        //!Rating ends

                                        //!Time
                                        Text(
                                          '9 hours ago',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: AppColors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                //!Name review restaurant name column ends
                              ],
                            ),
                            Container(
                              height: 1,
                              width: width,
                              color: Colors.grey,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.thumb_up_outlined),
                                      SizedBox(width: width * 0.01),
                                      Text('Cool')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.thumb_down_outlined),
                                      SizedBox(width: width * 0.01),
                                      Text('Bogus')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.comment),
                                      SizedBox(width: width * 0.01),
                                      Text('Bogus'),
                                    ],
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
        ),
      ),
    );
  }
}

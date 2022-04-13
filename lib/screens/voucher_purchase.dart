import 'package:codecell_happy_app/screens/homepage.dart';
import 'package:codecell_happy_app/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class VoucherPurchase extends StatefulWidget {
  const VoucherPurchase({Key? key}) : super(key: key);

  @override
  State<VoucherPurchase> createState() => _VoucherPurchaseState();
}

class _VoucherPurchaseState extends State<VoucherPurchase> {
  @override
  Widget build(BuildContext context) {
    var selected = false;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 15),
              child: Column(
                children: [
                  //Appbar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Voucher Purchase',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),

                  //Restaurant Name logo
                  Row(
                    children: [
                      Container(
                        height: width * 0.15,
                        width: width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/offer.jpeg'),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.02),
                      Text(
                        'The Rio Lounge (Gulshan)',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),

                  //Buy 2 get 1
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Buy 2 Get 1 Ifter Buffet',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '৳200',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    children: [
                      Text(
                        'PRICE DETAILS',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Voucher Price',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '৳200',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'App Fee',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '৳4',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    height: 1,
                    width: width,
                    color: Colors.grey,
                  ),
                  SizedBox(height: height * 0.02),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '৳204',
                        style: TextStyle(
                          color: Color.fromARGB(255, 16, 101, 170),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payable from Points',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '৳10',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Container(
                    height: 1,
                    width: width,
                    color: Colors.grey,
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Payable Amount',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '৳194',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  elevation: 10,
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Select Payment Gateway",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: selected,
                                      onChanged: (v) {
                                        setState(() {
                                          selected = v!;
                                        });
                                      },
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: width * 0.1,
                                            height: height * 0.01,
                                            padding: EdgeInsets.only(
                                              right: width * 0.03,
                                            ),
                                            child: Image.network(
                                                'https://www.sslcommerz.com/wp-content/uploads/2019/11/footer_logo.png'),
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "SSL Commerce",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Pay using Nagad/Rocket/Visa/Mastercard/\nUpay/OkWallet & Others",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: selected,
                                      onChanged: (v) {
                                        setState(() {
                                          selected = v!;
                                        });
                                      },
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: width * 0.12,
                                          height: height * 0.015,
                                          padding: EdgeInsets.only(
                                            right: width * 0.03,
                                          ),
                                          child: Image.network(
                                              'https://iconape.com/wp-content/png_logo_vector/bkash-logo.png'),
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "bKash",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Pay using your bkash account",
                                                      style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      Get.offAll(() => HomeScreen());
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
                                          'Confirm purchase and pay bdt 194'
                                              .toUpperCase(),
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: height * 0.07,
                  width: width,
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      'CONFIRM PURCHASE AND PAY BDT 194',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
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

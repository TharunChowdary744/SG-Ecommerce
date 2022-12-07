import 'package:flutter/material.dart';

import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';
import 'orderTracking.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar:PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
      body: getBody(),
      //bottomNavigationBar: getFooter(),
    );
  }

  Widget getAppBar() {
    return
      DefaultAppBar(
        title: "Orders",
        child: DefaultBackButton(),
      );
  }

  Widget getBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          getTabs(),
          SizedBox(
            height: 30,
          ),
          pageIndex == 0 ? getListCurrentOrders() : getListPastOrders()
        ],
      ),
    );
  }

  Widget getTabs() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF2B2B2B).withOpacity(0.05)),
      child: Row(children: [
        pageIndex == 0
            ? Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: (size.width - 45) / 2,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF2B2B2B).withOpacity(0.15),
                          blurRadius: 5,
                          offset: Offset(0, 5))
                    ]),
                child: Center(
                  child: Text(
                    "Current Orders",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
        )
            : Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: (size.width - 45) / 2,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Current Orders",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2B2B2B).withOpacity(0.5)),
                  ),
                ),
              ),
            ),
          ),
        ),
        pageIndex == 1
            ? Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: (size.width - 45) / 2,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF2B2B2B).withOpacity(0.15),
                          blurRadius: 5,
                          offset: Offset(0, 5))
                    ]),
                child: Center(
                  child: Text(
                    "Past Orders",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
        )
            : Flexible(
          child: GestureDetector(
            onTap: () {
              setState(() {
                pageIndex = 1;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: (size.width - 45) / 2,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Past Orders",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2B2B2B).withOpacity(0.5)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget getListCurrentOrders() {
    var size = MediaQuery.of(context).size;
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFF2B2B2B).withOpacity(0.05)),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child:
            InkWell(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TrackOrder())),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TIME",
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Delivery Processing",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.orangeAccent),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.6,
                        child: Row(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                              color: Color(0xFF2B2B2B)
                                                  .withOpacity(0.1)),
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    height: 110,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://sanskritganga.in/wp-content/uploads/2021/02/7-300x420.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: Color(0xFF2B2B2B)
                                                .withOpacity(0.1)),
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tharun Chowdary",
                                    style: TextStyle(fontSize: 16),
                                    maxLines: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "₹",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "199/-",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          child: Row(
                            children: [
                              Container(
                                width: 1,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xFF2B2B2B).withOpacity(0.15)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Items: 1",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    "TIME",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF2B2B2B).withOpacity(0.5)),
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  Widget getListPastOrders() {
    var size = MediaQuery.of(context).size;
    return
      InkWell(
        onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => TrackOrder())),
        child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF2B2B2B).withOpacity(0.05)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "DATE",
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Delivered",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.orangeAccent),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.6,
                        child: Row(
                          children: [
                            Container(
                              width: 90,
                              height: 90,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 110,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://sanskritganga.in/wp-content/uploads/2021/02/7-300x420.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: Color(0xFF2B2B2B)
                                                .withOpacity(0.1)),
                                        color: Colors.white),
                                  ),
                                  /*Container(
                                        width: 80,
                                        height: 120,
                                        decoration: BoxDecoration(
                                            ),
                                      ),*/
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Flexible(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tharun Chowdary",
                                    style: TextStyle(fontSize: 16),
                                    maxLines: 2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "₹",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "199/-",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                          child: Row(
                            children: [
                              Container(
                                width: 1,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Color(0xFF2B2B2B).withOpacity(0.15)),
                              ),//horizontal line
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Items: 1",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    "TIME",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF2B2B2B).withOpacity(0.5)),
                                  )
                                ],
                              )
                            ],
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Text("")
    ]),
      );
  }
}

/*  Widget getFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
            color: Color(0xFF2B2B2B), borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            "Reorder",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }*/

import 'package:flutter/material.dart';
import '../Side_Menu_Bar.dart';
import '../notification/notificationPage.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int itemIndex = 0;

  Widget _incrementButton(int index) {
    return
    InkWell(
      onTap: () {
        setState(() {
          numberOfItems[index]++;
        });
      },
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Colors.black)),
        child: Center(
          child: Icon(
            Icons.add,
            size: 13,
            color: Colors.black,
          ),
        ),
      ),);
  }

  Widget _decrementButton(int index) {
    return
      InkWell(
        onTap: (){
          setState(() {
            numberOfItems[index]--;
          });
        },
        child: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Colors.black)),
          child: Center(
            child: ImageIcon(
              NetworkImage("https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-minus-512.png"),
              size: 11,
              color: Colors.black,
            ),
          ),
        ),
      );

  }
  List numberOfItems = <int>[];

//For demonstrate purpose I have added five static items
  void addItems() {
    numberOfItems.add(1);
    numberOfItems.add(2);
    numberOfItems.add(3);
    numberOfItems.add(4);
    numberOfItems.add(5);
  }
  @override
  void initState() {
    super.initState();
    addItems();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: new AppBar(
          backgroundColor: Color(0Xffe16f35),
          title: Text("My Cart",style: TextStyle(color:Colors.black),),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NotificationPage();
                }));
              },
            ),
          ]),*/
      drawer:SideNav(),
      body:
      ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  /*decoration: new BoxDecoration(
                          color: Colors.white,
                          boxShadow: [new BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0,
                          ),]
                      ),*/
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage("https://sanskritganga.in/wp-content/uploads/2021/02/7-300x420.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Abhigyan Shakuntalam.",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("अभिज्ञानशाकुन्तलम्.",
                              style: TextStyle(
                                  fontSize: 9, color:Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("पद्मश्री डॉ. कपिलदेव द्धिवेदी आचार्य.",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 22,
                            ),
                            Row(
                              children: [
                                _decrementButton(itemIndex),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '${numberOfItems[itemIndex]}',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                _incrementButton(itemIndex),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("₹280.00",
                                style: TextStyle(
                                  fontSize: 18,
                                )),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text(
              "Do you have a promotion code?",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Standard - Free",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color:Color(0Xffe16f35), borderRadius: BorderRadius.circular(50 / 2)),
              child: Center(
                child: Text(
                  "Buy for ₹280".toUpperCase(),
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



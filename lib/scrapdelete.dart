import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Colors.dart';
import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';
class WishPage extends StatefulWidget {
  const WishPage({Key? key}) : super(key: key);

  @override
  State<WishPage> createState() => _WishPageState();
}

class _WishPageState extends State<WishPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primary,
      appBar: DefaultAppBar(
        title: 'WishList',
        child: DefaultBackButton(),
      ),
      body: Column(
        children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20,top:15,left: 10,right: 10),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(30),
                    //color: Colors.white.withOpacity(0.05),
                  boxShadow: [
                    BoxShadow(
                        color:
                        secondary.withOpacity(0.15),
                        blurRadius: 5,


                    )
                  ]

                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: size.width * 0.6,
                            height: 140,
                            child: Row(
                              children: [
                                Container(
                                  width: 90,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://sanskritganga.in/wp-content/uploads/2021/02/7-300x420.jpg"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color:
                                          Color(0xFF2B2B2B).withOpacity(0.1)),
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Abhigyan shakuntalam",
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
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 1,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF2B2B2B).withOpacity(0.15)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Container(
                                        width: size.width * 0.1,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color:
                                                  secondary.withOpacity(0.15),
                                                  blurRadius: 5,
                                                  offset: Offset(0, 5))
                                            ]),
                                        child: Center(
                                          child: Icon(
                                            CupertinoIcons.cart,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.03,
                                      ),
                                      Container(
                                        width: size.width * 0.1,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color:
                                                  secondary.withOpacity(0.15),
                                                  blurRadius: 5,
                                                  offset: Offset(0, 5))
                                            ]),
                                        child: Center(
                                          child: Icon(
                                            Icons.delete,
                                            size: 20,
                                          ),
                                        ),
                                      ),
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
          ]),
        ],
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../Colors.dart';
import '../Json/Favouritejson.dart';
import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';

class WishList extends StatefulWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar:
      PreferredSize(child: getAppBar(), preferredSize: Size.fromHeight(60)),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getAppBar() {
    return
      DefaultAppBar(
        title: 'WishList',
        child: DefaultBackButton(),
      );
  }
















  Widget getBody() {
    // List items = [true, true, false, true];
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: List.generate(favouriteJson.length, (index) {
              return Column(
                children: [
                  Container(
                    width: (size.width - 50) / 2,
                    height: 220,
                    child: Stack(
                      children: [
                        Container(
                          width: (size.width - 50) / 2,
                          height: 200,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: favouriteJson[index]['active'] ? 1.2 : 0,
                                  color: favouriteJson[index]['active']
                                      ? secondary.withOpacity(0.5)
                                      : Colors.transparent),
                              color: secondary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, right: 15, left: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      LineIcons.star,
                                      size: 20,
                                      color: secondary,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Text(
                                        favouriteJson[index]['rate'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
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
                                      favouriteJson[index]['active']
                                          ? LineIcons.heartAlt
                                          : LineIcons.heart,
                                      size: 20,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            ///rate and heart
                          ),
                        ),
                        Container(
                          width: (size.width - 80) / 2,
                          height: 180,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(favouriteJson[index]['image']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                        ///image Container
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        favouriteJson[index]['name'],
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Container(
                        width: (size.width - 60) / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                "₹",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: red,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text(
                              favouriteJson[index]['price'],
                              style: TextStyle(
                                  fontSize: 20,
                                  color: secondary.withOpacity(0.5),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                  ///Name and Cost
                ],
              );
            }),
          ),
        ],
      ),
    );
  }



















  Widget getFooter(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
            color: Color(0Xffe16f35),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Center(
          child: Text("Add To Cart",style: TextStyle(
              color:white,
              fontSize: 17,
              fontWeight: FontWeight.w500
          ),),
        ),
      ),
    );
  }
}

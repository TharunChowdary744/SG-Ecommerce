import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sg_sample2/product/producttabbar.dart';
import '../notification/notificationList.dart';
class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
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
          child: const Center(
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
          child: const Center(
            child: Icon(CupertinoIcons.minus,size: 13,)
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
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Sanskrit Ganga',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black, size: 23,),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 25,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NotificationList();
                }));
              },
            ),
          ]),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 13,left: 13,right: 13),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Dr.Kapildev Dwivedi'),
              FlatButton(
                onPressed: () {},
                child: const Text(
                  'ADD TO WISHLIST',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 30 / 100 / 1.2,
            child: Row(
              children: [
                Expanded(
                  child: Image.network(
                    "https://penpencil2.pc.cdn.bitgravity.com/5c2763b654d8f9133db1f875/7410ee56-44aa-4899-abdb-9f89f54eda41.jpg",
                      //width:MediaQuery.of(context).size.width*30/100/13
                  ),
                ),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:3.0,),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height*30/100/9,
                            child: const AutoSizeText(
                              'Abhigyan Shakuntalam',
                              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Icon(CupertinoIcons.tag,size: MediaQuery.of(context).size.width*0.05,),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 5,top: 7),
                                child: SizedBox(
                                    height: MediaQuery.of(context).size.height*30/100/13,
                                    child: const AutoSizeText('Any Tags',style: TextStyle(color: Colors.blue,fontSize: 15),)))
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*30/100/5,
                          child: Row(
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '₹250/-',
                                      style: TextStyle(
                                          color: Colors.red,
                                          decoration: TextDecoration.lineThrough,
                                          fontSize: 12.5),
                                    ),
                                    TextSpan(
                                      text: '  ' + '₹199/-',
                                      style: TextStyle(color: Colors.black, fontSize: 15),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height*30/100/16,
                              child: const AutoSizeText(
                                'Book Price : ' + '₹',
                                textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: SizedBox(
                                  height: MediaQuery.of(context).size.height*30/100/16,
                                  child: const AutoSizeText('Sanskrit Ganga Price : ' + '₹',style: TextStyle(fontWeight: FontWeight.w500))),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: SizedBox(
                                  height: MediaQuery.of(context).size.height*30/100/16,
                                  child: const AutoSizeText('You Save : ' + '₹',style: TextStyle(fontWeight: FontWeight.w500))),
                            ),
                          ],
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 30 / 100 / 15,
                child:
                Row(
                  children: const [
                    AutoSizeText(
                      'In Stock',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                )
              ),
              Row(
                  children:[ Container(
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: <Widget>[
                        _decrementButton(itemIndex),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            '${numberOfItems[itemIndex]}',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                        _incrementButton(itemIndex),
                      ],
                    ),
                  ),
                  ]
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:18,top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 30 / 100 / 5,
                  width: MediaQuery.of(context).size.width/2.15,
                  decoration: const BoxDecoration(
                    color: Color(0xff0dc3da),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child:
                  FlatButton(
                    onPressed: () {
                    },
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height*30/100/13,
                      child: const AutoSizeText(
                        'Preview',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:18,top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 30 / 100 / 5,
                  width: MediaQuery.of(context).size.width/2.15,
                  decoration: const BoxDecoration(
                    color: Color(0xff0dc3da),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child:
                  FlatButton(
                    onPressed: () {
                    },
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height*30/100/13,
                      child: const AutoSizeText(
                        'Add to Cart',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          //const Center(child: Text("Sankrit Ganga's Price inclusive of all Taxes",style:TextStyle(fontSize: 13))),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:18),
            child: Container(
              height: MediaQuery.of(context).size.height * 30 / 100 / 5,
              decoration: const BoxDecoration(
                color: Color(0Xffff5821),
                //color: Color(Oxff5821),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child:
              FlatButton(
                onPressed: () {
                },
                child:  SizedBox(
                  height: MediaQuery.of(context).size.height*30/100/13,
                  child: const AutoSizeText(
                    'Buy Now',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Container(
              constraints: const BoxConstraints(
                minHeight: 500.0,
                maxHeight: 700.0,
              ), child: const MyTabBar()),
        ],
      ),
    );
  }
}

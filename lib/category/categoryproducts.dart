import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';


class ApiProduct extends StatefulWidget {
  const ApiProduct({Key? key}) : super(key: key);

  @override
  _ApiProductState createState() => _ApiProductState();
}
class _ApiProductState extends State<ApiProduct> {


  late List data;
  Future<String> getData() async {

    var response = await http.get(
        Uri.parse("https://mocki.io/v1/0d6d4df9-c82a-46cb-81d3-8e2d82bf1237"),
        headers: {
          "Accept": 'application/json, text/plain, */*',
          'Content-Type': 'application/json',
          //"Authorization": 'Basic YWRtaW46YWRtaW4='
        }
    );
    setState(() {
      data = json.decode(response.body);
    });
    return "Success!";
  }
  @override
  void initState(){
    this.getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        title: 'WishList',
        child: DefaultBackButton(),
      ),
      body:
      Column(
          children: [
            Row(children: const [
              Padding(
                padding: EdgeInsets.only(left: 13.0, top: 12, bottom: 8),
                child: Text(
                  "JUNIOR AIDED",
                  style: TextStyle(fontSize: 21),
                  textAlign: TextAlign.start,
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(right:18.0,left:18.0),
              child: Divider(
                color: Colors.grey[900],
                thickness: 1,
              ),
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 220,
                      childAspectRatio: 0.59,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemCount: data == null ? 0 : data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      Padding(
                        padding: const EdgeInsets.only(right:13,left:13,bottom:5,top: 3),
                        child:
                        Container(
                          height: 300,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(
                                color: Colors.black,
                                blurRadius: 2.0,
                              ),]
                          ),
                          child:
                          Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                  Image.network(data[index]["productImage"]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                                  child: Text(
                                    data[index]["productName"],
                                    style: TextStyle(fontSize: 17),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:data[index]["mrpPrice"],
                                          style: const TextStyle(
                                              color: Colors.red,
                                              decoration: TextDecoration.lineThrough,
                                              fontSize: 13),
                                        ),
                                        TextSpan(
                                          text: '  ' + data[index]["discountPrice"],
                                          style: new TextStyle(color: Colors.black, fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      );
                  }),
            ),
          ]),
    );
  }










}

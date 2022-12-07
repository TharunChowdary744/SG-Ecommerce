import 'package:flutter/material.dart';
import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';
import 'AddressCard.dart';
import 'AddAddress.dart';

class DeliveryDetails extends StatefulWidget {
  @override
  _DeliveryDetailsState createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
          title: 'Address Details',
          child: DefaultBackButton(),
        ),
      /*floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0Xffe16f35),
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddDeliverAddress(
              ),
            ),
          );
        },
      ),*/
      bottomNavigationBar: Container(
        // width: 160,
        height: 48,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: MaterialButton(

          child:  Text("Add new Address"),
          onPressed: () {
           Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AddDeliverAddress(),
              ),
            );
          },
          color: Color(0Xffe16f35),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:21.0,top:15,bottom: 15),
            child: Text("Default Adhress",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
          ),
         Container(
           child: Addresscard(
             "Tharun Chowdary",
             "5-346",
             "9603566744",
             "Kakinada",
             "Andhra Bank Colony",
             "EAST GODAVARI",
             "Andhra Pradesh",
             "533001",
             ""
           ),
         ),
          Padding(
            padding: const EdgeInsets.only(left:21.0,top:15,bottom: 15),
            child: Text("All Address",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
          ),
          Container(
            child: Addresscard(
                "Vikram asha",
                "33-14-18/adho",
                "8125966015",
                "bhadrachalam",
                "Teachers Colony",
                "Bhadradri kothagudem",
                "Telangana",
                "507111",
                "Mark Default"
            ),
          ),
          ])
    );
  }
}

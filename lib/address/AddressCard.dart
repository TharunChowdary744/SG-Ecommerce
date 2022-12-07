import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AddAddress.dart';

class Addresscard extends StatelessWidget {
  final String Name;
  final String DoorNo;
  final String PhoneNumber;
  final String city;
  final String Street;
  final String District;
  final String State;
  final String PinCode;
  final String Default;

  const Addresscard(this.Name, this.DoorNo, this.PhoneNumber, this.city, this.Street, this.District, this.State, this.PinCode,this.Default);

  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 3,
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shadowColor: Colors.black,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                Name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                DoorNo +", "+Street+", "+city+', '+District+", "+State+' - '+PinCode,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: new TextSpan(
                  children: <TextSpan>[
                    new TextSpan(
                      text:"Phone : ",
                      style: new TextStyle(
                          fontSize: 15,color: Colors.black),
                    ),
                    new TextSpan(
                      text: PhoneNumber,
                      style: new TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500,),
                    ),
                  ],
                ),
              ),

              Divider(
                color: Colors.grey,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:15.0),
                    child: Text('Delete',style: TextStyle(color: Colors.red,fontSize:13,fontWeight: FontWeight.w500,),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:15.0),
                    child: InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => AddDeliverAddress())),
                        child: Text('Edit',style: TextStyle(color: Colors.blue,fontSize:13,fontWeight: FontWeight.w500,),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:15.0),
                    child: Text(Default,style: TextStyle(color: Colors.blue,fontSize:13,fontWeight: FontWeight.w500,),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ); //SizedBox//Card

  }
}

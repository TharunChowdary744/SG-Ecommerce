import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TermsConditions extends StatefulWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  _TermsConditionsState createState() => _TermsConditionsState();
}
class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        //backgroundColor: Color(0xffffebd2),
          title: Text("Terms & Conditions | Terms of Use | Sanskrit Ganga",style: TextStyle(
            fontSize:12,color: Color(0Xffe16f35)),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0Xffe16f35)),
          onPressed: () => Navigator.of(context).pop(),
        ),
          ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Center(child: Text("SANSKRIT GANGA TERMS AND CONDITIONS",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),)),
            ),
            Padding(
              padding: const EdgeInsets.only(left:3.0,top:10,bottom:15),
              child: Text('Welcome to SANSKRIT GANGA !'),
            ),
          ]),
    );
  }
}

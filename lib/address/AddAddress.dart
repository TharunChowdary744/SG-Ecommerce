import 'package:flutter/material.dart';
import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';
import 'components/CostomTextFormField.dart';

class AddDeliverAddress extends StatefulWidget {
  @override
  _AddDeliverAddressState createState() => _AddDeliverAddressState();
}

enum AddressTypes {
  Home,
  Work,
  Other,
}

class _AddDeliverAddressState extends State<AddDeliverAddress> {
  var myType = AddressTypes.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Add New Address',
        child: DefaultBackButton(),
      ),
      bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: 48,
          child:MaterialButton(
            onPressed: () {
            },
            child: InkWell(

              child: Text(
                "Add Address",
                style: TextStyle(
                  color:  Colors.orange[500],
                ),
              ),
            ),
            color:  Colors.blue[50],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                30,
              ),
            ),
          )
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          children: [
            MyTextFormField(
              "First Name",
            ),
            MyTextFormField(
              "Last Name",
            ),
            MyTextFormField(
              "Mobile Number",
            ),
            MyTextFormField(
              "Alternate Mobile Number",
            ),
            MyTextFormField(
              "Street Name",
            ),
            MyTextFormField(
              "Landmark",
            ),
            MyTextFormField(
              "City",
            ),
            MyTextFormField(
              "Place",
            ),
            MyTextFormField(
              "Pincode",
            ),
            InkWell(
              child: Container(
                height: 47,
                width: double.infinity,
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Done!"),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text("Address Type*"),
            ),
            RadioListTile(
              value: AddressTypes.Home,
              groupValue: myType,
              title: Text("Home"),
              secondary: Icon(
                Icons.home,
                color: Colors.blue[50],
              ), onChanged: (AddressTypes? value) {  },
            ),
            RadioListTile(
              value: AddressTypes.Work,
              groupValue: myType,
              title: Text("Work"),
              secondary: Icon(
                Icons.work,
                color: Colors.blue[50],
              ), onChanged: (AddressTypes? value) {  },
            ),
            RadioListTile(
              value: AddressTypes.Other,
              groupValue: myType,
              title: Text("Other"),
              secondary: Icon(
                Icons.devices_other,
                color:  Colors.blue[50],
              ), onChanged: (AddressTypes? value) {  },
            )
          ],
        ),
      ),
    );
  }
}
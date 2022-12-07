import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

typedef String Validate(String val);

class MyTextFormField extends StatelessWidget {
  String label;

  MyTextFormField(this.label,);//Constructor

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top:8.0,bottom:8.0),
      child: TextFormField(
        minLines: 1,
        maxLines: 3,
        obscureText: false,
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 5.0),
          labelText: label,
          border: OutlineInputBorder(
            borderSide: new BorderSide(color: Theme.of(context).accentColor),
            borderRadius: new BorderRadius.circular(10.7),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.black54),
            borderRadius: new BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}

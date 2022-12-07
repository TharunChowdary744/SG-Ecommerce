import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bottomNavBar.dart';
void main()=>runApp(SGAppp());

class SGAppp extends StatelessWidget {
  const SGAppp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      /*routes: {
        '/otp': (context) => OtpPage(),
        '/home': (context) => HomePage(),
        '/account': (context)=> AccountPage(),
      },*/
      home: BottomNavBar(),
    );
  }
}

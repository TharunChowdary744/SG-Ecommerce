import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
class ShareApp extends StatefulWidget {
  @override
  _ShareAppState createState() => _ShareAppState();
}
class _ShareAppState extends State<ShareApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(
          //color: const Color(0xff7c94b6),
          image: new DecorationImage(
              fit: BoxFit.fill,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop),
              image: new AssetImage("assets/bg.jpg")

          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Share our application",
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: MaterialButton(
                elevation: 5.0,
                height: 50.0,
                minWidth: 150,
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Icon(Icons.share),
                onPressed: () {
                  Share.share(
                      'https://protocoderspoint.com/');
                },
              ),
            ),
            SizedBox(
              height: 25.0,
            ),

          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class NotificationTiles extends StatelessWidget {
  final String title, subtitle;
  final onTap;
  final bool enable;
  const NotificationTiles({
    Key? key, required this.title, required this.subtitle, required this.onTap, required this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU"), fit: BoxFit.cover))),
      title: Text(title, style: TextStyle(color: Color(0xFF303030))),
      subtitle: Text(subtitle,
          style: TextStyle(color: Color(0xFF808080))),
      onTap: onTap,
      enabled: enable,
    );
  }
}
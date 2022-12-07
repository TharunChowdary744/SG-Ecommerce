import 'package:flutter/material.dart';
class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final Widget child;
  final action;
  const DefaultAppBar({
    Key? key, required this.title, required this.child, this.action,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(56.0);
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: Color(0Xffe16f35))),
      centerTitle: true,
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0.00,
      automaticallyImplyLeading: false,
      //iconTheme: IconThemeData(color: Colors.red),
      leading: child,
      actions: action,
    );
  }
}
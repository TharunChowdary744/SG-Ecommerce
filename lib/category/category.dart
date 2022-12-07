import 'package:flutter/material.dart';
import 'package:blur/blur.dart';

class Category extends StatefulWidget {
  const Category({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  double blurValue = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-65cdZ0OLZ2c8h-TyLgT6V6_C3JabGO_Wg&usqp=CAU',height: 70,
                      width: MediaQuery.of(context).size.width - 55,fit:BoxFit.fill).blurred(
                      colorOpacity: 0.2,
                      borderRadius:
                      const BorderRadius.horizontal(right:Radius.circular(20),left: Radius.circular(20)),
                      blur: 19,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'E-books',
                        style :TextStyle(color: Colors.yellow)
                        /*style: theme.textTheme.headline2!
                            .copyWith(color: theme.scaffoldBackgroundColor),*/
                      ),

                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-65cdZ0OLZ2c8h-TyLgT6V6_C3JabGO_Wg&usqp=CAU',height: 70,
                            width:MediaQuery.of(context).size.width - 250,fit:BoxFit.fill).blurred(
                          colorOpacity: 0.2,
                          borderRadius:
                          const BorderRadius.horizontal(right:Radius.circular(20),left: Radius.circular(20)),
                          blur: 19,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                              'E-books',
                              style :TextStyle(color: Colors.yellow)
                            /*style: theme.textTheme.headline2!
                            .copyWith(color: theme.scaffoldBackgroundColor),*/
                          ),

                        ],
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7-65cdZ0OLZ2c8h-TyLgT6V6_C3JabGO_Wg&usqp=CAU',height: 70,
                            width: MediaQuery.of(context).size.width - 250,fit:BoxFit.fill).blurred(
                          colorOpacity: 0.2,
                          borderRadius:
                          const BorderRadius.horizontal(right:Radius.circular(20),left: Radius.circular(20)),
                          blur: 19,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                              'E-books',
                              style :TextStyle(color: Colors.yellow)
                            /*style: theme.textTheme.headline2!
                            .copyWith(color: theme.scaffoldBackgroundColor),*/
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
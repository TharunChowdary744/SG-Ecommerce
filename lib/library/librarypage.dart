import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Side_Menu_Bar.dart';
import '../notification/notificationList.dart';
import 'all.dart' as all;
import 'downloaded.dart' as Download;


class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: new AppBar(
          bottom: TabBar(
            isScrollable: false,

            controller: controller,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.verified),
              ),
              Tab(
                text: ('All'),
              ),
              Tab(
                text: ('Downloaded'),
              ),
            ],
          ),
          backgroundColor: Color(0Xffe16f35),
          title: Text("Library"),
          centerTitle: true,
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NotificationList();
                }));
              },
            ),
          ]),*/
      /*drawer: SideNav(),*/
      body:
      /*  Column(
          children: [
            Container(
              color: Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: TextStyle(fontSize: 16,),
                tabs: [
                Container(
                  width: 25,
                  child: Tab(icon: Icon(Icons.camera_alt),),
                ),
                  Container(
                    width: 80,
                    child: Tab(
                      child: Row(children: [
                        Text("All"),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Text("1",style: TextStyle(
                            color: Color(0Xffe16f35),
                            fontSize: 14,
                          ),),
                        )
                      ],),
                    ),
                  ),
                  Container(
                    width: 90,
                    child: Tab(
                      child: Text("Downloaded"),
                    ),
                  ),
              ],

              ),
            )
          ],
        ),*/
      TabBar(
        isScrollable: false,

        controller: controller,
        tabs: <Widget>[
          Container(
            width: 25,
            child: Tab(icon: Icon(Icons.camera_alt),),
          ),
      Container(
        width: 80,
        child: Tab(
          child: Row(children: [
            Text("All"),
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Text("1",style: TextStyle(
                color: Color(0Xffe16f35),
                fontSize: 14,
              ),),
            )
          ],),
        ),
      ),
      Container(
        width: 90,
        child: Tab(
          child: Text("Downloaded"),
        ),
      ),

          /*Tab(
            text: ('All'),
          ),
          Tab(
            text: ('Downloaded'),*/
        ],
      )
    );
  }
}

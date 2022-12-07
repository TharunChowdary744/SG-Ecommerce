import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'bottomNavBar.dart';
class SideNav extends StatefulWidget {
  const SideNav({Key? key}) : super(key: key);
  @override
  _SideNavState createState() => _SideNavState();
}
class _SideNavState extends State<SideNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: ListView(
        // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Tharun Chowdary",style: TextStyle(color: Colors.black),),
              accountEmail: Text("tharun744h@gmail.com",style: TextStyle(color: Colors.black),),
              currentAccountPicture: GestureDetector(
                child:
                CircleAvatar(
                    radius: 30.0,
                    backgroundImage:new NetworkImage("https://media.gettyimages.com/photos/actor-rowan-atkinson-in-character-as-mr-bean-arrives-at-bondi-beach-picture-id73510827?s=612x612")
                ),
              ),
              decoration: new BoxDecoration(
                color: const Color(0xff676e7c),
                /*image: new DecorationImage(
                    fit: BoxFit.fill,
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop), image: null,
                ),*/
              ),
            ),
            FadeInLeft(
            duration: Duration(milliseconds: 201),
              child: ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return BottomNavBar();
                      }));

                },
                leading: Icon(Icons.home,
                    color: Theme.of(context).iconTheme.color),
              ),
            ),
            FadeInLeft(
              duration: Duration(milliseconds: 203),
              child: ExpansionTile(
                leading: Icon(Icons.menu_book,),
                title: Text(
                  "Books",
                ),
                children: <Widget>[
                  ListTile(
                      title: Text("C-TET/UP-TET"),
                      onTap: () {},
                      leading:  SizedBox()
                  ),
                  ListTile(
                      title: Text("HIGHER EDUCATION"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("H-TET"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("JHARKHAND"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("JUNIOR AIDED"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("L.T."),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("MISCELLANEOUS/Entrance exam"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("MP"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("PCS"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("RPSC"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("TEXT BOOKS"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UGC-NET"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UP-PGT"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UP-TGT"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                ],
              ),
            ),
            FadeInLeft(
              duration: Duration(milliseconds: 203),
              child: ExpansionTile(
                leading: Icon(Icons.menu_book,),
                title: Text(
                  "eBooks",
                ),
                children: <Widget>[
                  ListTile(
                      title: Text("C-TET/UP-TET"),
                      onTap: () {},
                      leading:  SizedBox()
                  ),
                  ListTile(
                      title: Text("HIGHER EDUCATION"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("H-TET"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("JHARKHAND"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("JUNIOR AIDED"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("L.T."),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("MISCELLANEOUS/Entrance exam"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("MP"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("PCS"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("RPSC"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("TEXT BOOKS"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UGC-NET"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UP-PGT"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UP-TGT"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                ],
              ),
            ),
            FadeInLeft(
              duration: Duration(milliseconds: 205),
              child: ExpansionTile(
                leading: Icon(Icons.notes,),
                title: Text(
                  "Courses",
                ),
                children: <Widget>[
                  ListTile(
                      title: Text("B.A- प्रथमवर्ष"),
                      onTap: () {},
                      leading:  SizedBox()
                  ),
                  ListTile(
                      title: Text("B.A-द्वितीय वर्ष"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("GDC (संस्कृत)"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("Jharkhand PGT"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("MP वर्ग-3 (संस्कृत)"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("RPSC ग्रेड-2"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UP-LT संस्कृत"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UP-PCS (संस्कृत)"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UP-PGT (संस्कृत)"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UP-TET प्राथमिक एवं उच्चप्राथमिक स्तर (संस्कृत)"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("UP-TGT (संस्कृत)"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("उत्तराखण्ड L.T (संस्कृत)"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("सम्पूर्ण पुस्तक प्राख्याता NTA UGC-NET/JRF संस्कृत प्रश्नपत्रम् -||,||"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("हरियाणा TET (संस्कृत)"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                  ListTile(
                      title: Text("हायर उच्चतर सेवा आयोग (Assistant Professor)"),
                      onTap: () {},
                      leading:
                      SizedBox()
                  ),
                ],
              ),
            ),
            /*ListTile(
              title: Text(""),
              onTap: () {},
              leading: Icon(Icons.notes,
                  color: Theme.of(context).iconTheme.color),
            ),*/
            FadeInLeft(
              duration: Duration(milliseconds: 207),
              child: ListTile(
                title: Text("Blog"),
                onTap: () {},
                // leading: Image.asset("assets/images/Tag-icon.png",height: 15,color: Colors.black,),
                /*leading: assets.image
                    color: Theme.of(context).iconTheme.color),*/
                leading: Icon(LineIcons.blogger),
              ),
            ),
            FadeInLeft(
              duration: Duration(milliseconds: 209),
              child: ListTile(
                title: Text("Gallery"),
                onTap: () {},
                leading:
                Icon(Icons.photo_album, color: Theme.of(context).iconTheme.color),
              ),
            ),
            FadeInLeft(
              duration: Duration(milliseconds: 211),
              child: ListTile(
                title: Text("Contact Us"),
                onTap: () {},
                leading:
                Icon(Icons.contact_support, color: Theme.of(context).iconTheme.color),
              ),
            ),
            FadeInLeft(
              duration: Duration(milliseconds: 213),
              child: ListTile(
                title: Text("More"),
                onTap: () {},
                leading:
                Icon(Icons.history, color: Theme.of(context).iconTheme.color),
              ),
            ),
            FadeInLeft(
              duration: Duration(milliseconds: 215),
              child: ListTile(
                title: Text("Logout"),
                onTap: () {},
                leading: Icon(Icons.exit_to_app,
                    color: Theme.of(context).iconTheme.color),
              ),
            )
          ]),
    );
  }
}



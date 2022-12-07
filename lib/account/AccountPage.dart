import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sg_sample2/shareapp/shareappPage.dart';
import 'package:share/share.dart';
import '../contactus/contactus.dart';
import '../orders/OrderPage.dart';
import '../address/AddressPage.dart';
import '../notification/notificationList.dart';
import '../terms&conditions/terms&conditions.dart';
import '../wishlist/wishlistpage.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              /*SliverPersistentHeader(
                delegate: Accountbar(MediaQuery.of(context).size.width),
                pinned: true,
              ),*/
              SliverToBoxAdapter(
                child: Column(
                  children: const [PhoneAndName()],
                ),
              ),
              const AcoountBody()
            ],
          ),
        ),
      );
  }
}

class Accountbar extends SliverPersistentHeaderDelegate {

  static final appBarColorTween = ColorTween(
      begin: Colors.white, end: const Color.fromARGB(255, 225, 111, 53));

  static final appbarIconColorTween =
  ColorTween(begin: Colors.grey[800], end: Colors.white);

  static final phoneNumberTranslateTween = Tween<double>(begin: 20.0, end: 0.0);

  static final phoneNumberFontSizeTween = Tween<double>(begin: 20.0, end: 16.0);

  static final profileImageRadiusTween = Tween<double>(begin: 3.5, end: 1.0);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final relativeScroll = min(shrinkOffset, 45) / 45;
    final relativeScroll70px = min(shrinkOffset, 70) / 70;

    return Container(
      color: appBarColorTween.transform(relativeScroll),
      child: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                left: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back, size: 25),
                  color: Colors.black,
                ),
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert, size: 25),
                  color: Colors.black,
                ),
              ),
              Positioned(
                  top: 15,
                  left: 50,
                  child: displayPhoneNumber(relativeScroll70px)),
               Positioned(
                  top: 5,
                  child: displayProfilePicture(relativeScroll70px)),
            ],
          ),
        ],
      ),
    );
  }

  Widget displayProfilePicture(double relativeFullScrollOffset) {
    return Transform(
      transform: Matrix4.identity()
        ..scale(
          profileImageRadiusTween.transform(relativeFullScrollOffset),
        ),
      child: const
      CircleAvatar(
        backgroundImage: NetworkImage(
            "https://media-exp1.licdn.com/dms/image/C4D03AQFy_PE1YZqjWg/profile-displayphoto-shrink_200_200/0/1650591061566?e=1671062400&v=beta&t=1YY-0mgBnTIorOpxQ4J7Knrx9ze6ZyPli8hXEkCRo_4"),
      ),
    );
  }

  Widget displayPhoneNumber(double relativeFullScrollOffset) {
    if (relativeFullScrollOffset >= 0.8) {
      return Transform(
        transform: Matrix4.identity()
          ..translate(
            0.0,
            phoneNumberTranslateTween
                .transform((relativeFullScrollOffset - 0.8) * 5),
          ),
        child: Text(
          "Account",
          style: TextStyle(
            fontSize: phoneNumberFontSizeTween
                .transform((relativeFullScrollOffset - 0.8) * 1),
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
    }

    return const SizedBox.shrink();
  }

  @override
  double get maxExtent => 120;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(Accountbar oldDelegate) {
    return true;
  }
}


class PhoneAndName extends StatelessWidget {
  const PhoneAndName({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 70,
          backgroundImage: NetworkImage(
              "https://media-exp1.licdn.com/dms/image/C4D03AQFy_PE1YZqjWg/profile-displayphoto-shrink_200_200/0/1650591061566?e=1671062400&v=beta&t=1YY-0mgBnTIorOpxQ4J7Knrx9ze6ZyPli8hXEkCRo_4"),
        ),
        SizedBox(height: 15),

        Text(
          "Tharun Chowdary",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "+91 9603566744",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "tharun744h@gmail.com",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}


class AcoountBody extends StatelessWidget {
  const AcoountBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate( [
          SizedBox(height: 20),
          ListTile(
            title: Text("Orders"),
            trailing: Icon(Icons.arrow_forward_ios_sharp, size: 20,),
            leading: Icon(Icons.laptop_chromebook, size: 20,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrderPage(),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Contact Us"),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
              size: 20,),
            leading: Icon(Icons.contact_support,
              size: 20,),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ContactUs())),
          ),
          ListTile(
            title: Text("Wishlist"),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
              size: 20,),
            leading: Icon(Icons.widgets_sharp,
              size: 20,),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WishListPage(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 4.0,
            child: const DecoratedBox(
              decoration: const BoxDecoration(color: Colors.grey ),
            ),
          ),
          ListTile(
            title: Text("Address"),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
              size: 20,),
            leading: Icon(Icons.location_on,
              size: 20,),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DeliveryDetails())),
          ),
          ListTile(
            title: Text("Notifications"),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
              size: 20,),
            leading: Icon(Icons.notifications,
              size: 20,),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NotificationList())),

          ),
          ListTile(
            title: Text("Customer Care"),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
              size: 20,),
            leading: Icon(Icons.crop_square_sharp,
              size: 20,),
          ),
          ListTile(
            title: Text("Share App & Invite"),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
              size: 20,),
            leading: Icon(Icons.share,
              size: 20,),
            /*onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ShareApp())),*/
            onTap: () {
              Share.share(
                  'https://protocoderspoint.com/');
            },

          ),
          /*ListTile(
            title: Text("Settings"),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
              size: 20,),
            leading: Icon(Icons.settings,
              size: 20,),
            onTap: () {
            },

          ),*/
          ListTile(
            title: Text("Terms & Conditions"),
            trailing: Icon(Icons.arrow_forward_ios_sharp,
              size: 20,),
            leading: Icon(Icons.indeterminate_check_box_sharp,
              size: 20,),
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => TermsConditions())),
          ),
          // to fill up the rest of the space to enable scrolling
          SizedBox(
            height: 50,
          ),
        ]));
  }
}






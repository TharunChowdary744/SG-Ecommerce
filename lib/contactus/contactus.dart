import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';


class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFEE8B6B),
      extendBodyBehindAppBar:true,
          appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Center(child: Text("Contact Us",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w800),),),
            SizedBox(
              height: 55,
            ),
             Container(
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(topRight:Radius.circular(50),topLeft:Radius.circular(50)),
                    //borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                    height: 180,),
                    Center(
                     child:Padding(
                       padding: const EdgeInsets.only(bottom: 50.0,top: 15),
                       child: Text("Sanskrit Ganga",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Color(0Xffe16f35)),)
                     ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0,bottom: 17),
                            child: Text("Reach Us : ",style: TextStyle(color: Colors.black,fontSize: 25),textAlign: TextAlign.left,),
                          ),
                          Center(child: Text("SanskritGanga 63/59, Mori Daraganj,\n Near Sankat Mochan Chotte Hanuman Mandir\n Daraganj Allahabad (U.P.),\n Pin- 211006",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0Xffe16f35),),textAlign: TextAlign.center,)),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0,bottom: 17,),
                            child: Text("Contact Us : ",style: TextStyle(color: Colors.black,fontSize: 25),textAlign: TextAlign.left,),
                          ),
                          RichText(
                            text: new TextSpan(
                              children: <TextSpan>[
                                new TextSpan(
                                  text: 'E-mail : ',
                                  style: new TextStyle(
                                      color: Color(0xFFEE8B6B),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                new TextSpan(
                                  text: 'support@sanskritganga.org',
                                  style: new TextStyle(
                                      color: Colors.blue, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          RichText(
                            text: new TextSpan(
                              children: <TextSpan>[
                                new TextSpan(
                                  text: 'Phone : ',
                                  style: new TextStyle(
                                      color: Color(0xFFEE8B6B),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                new TextSpan(
                                  text: '+91 8004545091,8004545092',
                                  style: new TextStyle(
                                      color: Colors.blue, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0,bottom: 17,),
                            child: Text("Follow Us : ",style: TextStyle(color: Colors.black,fontSize: 25),textAlign: TextAlign.left,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Boxicons.bxl_facebook_square,color: Colors.blueAccent,size: 50,),
                              Icon(Boxicons.bxl_youtube,color: Colors.red,size: 50,),
                              Icon(Boxicons.bxl_whatsapp,color: Colors.green,size: 50,),
                              Icon(Boxicons.bxl_play_store,color: Colors.redAccent,size: 50,),
                              Icon(Boxicons.bxl_instagram,color: Colors.pinkAccent,size: 50,),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Boxicons.bxl_twitter,color: Colors.blue,size: 50,),
                              Icon(Boxicons.bxl_telegram,color: Colors.blueAccent,size: 50,),
                              Icon(Boxicons.bxl_linkedin_square,color: Colors.blueAccent,size: 50,),
                              Icon(Boxicons.bxs_map,color: Colors.greenAccent,size: 50,),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
/*
RichText(
text: new TextSpan(
children: <TextSpan>[
new TextSpan(
text: '₹250/-',
style: new TextStyle(
color: Colors.red,
decoration: TextDecoration.lineThrough,
fontSize: 12),
),
new TextSpan(
text: '  ' + '₹199/-',
style: new TextStyle(
color: Colors.black, fontSize: 15),
),
],
),
)*/

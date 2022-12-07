import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';


class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: DefaultAppBar(
          title: 'Category',
          child: DefaultBackButton(),
        ),*/
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 5),
                    child: Text(
                      "Select below Category for E-books ",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
              Expanded(
                child: Container(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(10),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: <Widget>[
                      InkWell(
                        /*onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ApiProduct()),
                        ),*/
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Container(
                                        child: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                                          height: 80,
                                          width:MediaQuery.of(context).size.width - 330,)
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text('E-books',
                                            style: TextStyle(fontSize: 17)),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 5),
                    child: Text(
                      "Select Your Required Category Books ",
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
              GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: <Widget>[
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Container(
                                    child: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                                      height: 80,
                                      width:MediaQuery.of(context).size.width - 330,)
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top:8.0),
                                    child: Text('C-TET / UP-TET',
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Text('HIGHER EDUCATION',
                                    style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                              height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text('H-TET',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                              height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text('JHARKHAND',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                              height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                         Expanded(
                           child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text('JUNIOR AIDED',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                            height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                         Expanded(
                           child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('L.T',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                            height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                         Expanded(
                           child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Text('MISCELLANEOUS / Entrence exam',
                                    style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                              ),
                            ),
                         ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                            height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('MP',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                              height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('PCS',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                              height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('RPSC',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                              height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('TEXT BOOKS',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                              height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('UGC-NET',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                              height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('UP-PGT',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                              height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                  InkWell(
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ApiProduct()),
                    ),*/
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text('UP-TGT',
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Image.network("https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
                              height: 80,),
                          ),
                        ],
                      ),
                      /*decoration: BoxDecoration(
                        color: Colors.white,

                        image: DecorationImage(
                          image: Image.network('https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU',
                          height:50,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),*/
                      /*child: const Text('JHARKHAND',
                          style: TextStyle(fontSize: 15)),*/
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}

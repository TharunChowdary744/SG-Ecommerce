import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categoryproducts.dart';


class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5),
                child: Text(
                  "Select below Category for E-books ",
                  style: TextStyle(fontSize: 20),
                ),
              )),
          E_books(),

          Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5),
                child: Text(
                  "Select your required published books category  ",
                  style: TextStyle(fontSize: 20),
                ),
              )),
          PublishedCategory(),

        ],
      ),
    );
  }
}






class PublishedCategory extends StatefulWidget {
  const PublishedCategory({Key? key}) : super(key: key);
  @override
  State<PublishedCategory> createState() => _PublishedCategoryState();
}

class _PublishedCategoryState extends State<PublishedCategory> {
  final List<Map<String, dynamic>> CategoryMap = [
    {
      "title": "C-TET / UP-TET",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "HIGHER EDUCATION",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "H-TET",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "JHARKHAND",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "JUNIOR AIDED",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "L.T.",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "MISCELLANEOUS / Entrance exam",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "MP",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "PCS",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "RPSC",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "TEXT BOOKS",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "UGC-NET",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "UP-PGT",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
    {
      "title": "UP-TGT",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: CategoryMap.length,
      itemBuilder: (_, index) {
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ApiProduct()),
          ),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("${CategoryMap.elementAt(index)['title']}",
                        style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                  ),
                ),
                Image.network("${CategoryMap.elementAt(index)['images']}",
                  height: 80,),
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
        );

      },
    );
  }
}



class E_books extends StatefulWidget {
  const E_books({Key? key}) : super(key: key);
  @override
  State<E_books> createState() => _E_booksState();
}

class _E_booksState extends State<E_books> {
  final List<Map<String, dynamic>> EbooksMap = [
    {
      "title": "E-books",
      "images": "https://play-lh.googleusercontent.com/2iXIT01jtRXq_q2cHChTITPAxPi4tFpweFt61khT0gxxqdxqIXinEEKIos62TVUxKFU",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

        crossAxisCount: 3,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: EbooksMap.length,
      itemBuilder: (_, index) {
        return InkWell(

          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [BoxShadow(color: Color(0xFF808080), blurRadius: 2.0)]),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("${EbooksMap.elementAt(index)['title']}",
                        style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                  ),
                ),
                Image.network("${EbooksMap.elementAt(index)['images']}",
                  height: 80,),
              ],
            ),
          ),
        );

      },
    );
  }
}
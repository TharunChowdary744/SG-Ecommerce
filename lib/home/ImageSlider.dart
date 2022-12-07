import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';


class ImageSlide extends StatelessWidget {
  String image;
  String image1;
  String image2;
  String image3;

  ImageSlide(this.image, this.image1, this.image2, this.image3);



  @override
  Widget build(BuildContext context) {
    return
      ImageSlideshow(
        indicatorColor: Colors.blue,
        onPageChanged: (value) {
          debugPrint('Page changed: $value');
        },
        autoPlayInterval: 3000,

        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
          ),
          Image.network(
            image1,
            fit: BoxFit.cover,
          ),
          Image.network(
            image2,
            fit: BoxFit.cover,
          ),
          Image.network(
            image3,
           fit: BoxFit.cover,
          ),
        ],
      );
  }
}
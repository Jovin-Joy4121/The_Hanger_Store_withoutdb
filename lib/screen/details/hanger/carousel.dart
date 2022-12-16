import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Carosel1 extends StatefulWidget {
  const Carosel1({Key? key}) : super(key: key);

  @override
  State<Carosel1> createState() => _Carosel1State();
}

class _Carosel1State extends State<Carosel1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/bhs1.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image:  AssetImage("assets/images/bhs4.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                  image:  AssetImage("assets/images/bhs3.jpg"),
                  fit: BoxFit.fill

              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/bhs2.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),

        ],

        //Slider Container properties
        options: CarouselOptions(
          enlargeCenterPage: true,
          aspectRatio: 16/9,
          height: 200,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 600),
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}

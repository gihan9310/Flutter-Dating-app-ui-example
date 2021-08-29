import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeNave extends StatefulWidget {
  const HomeNave({Key? key}) : super(key: key);

  @override
  _HomeNaveState createState() => _HomeNaveState();
}

class _HomeNaveState extends State<HomeNave> {
  String imageUrl = 'assets/images/wallpaper/4.jpg';
  int count = 1;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: size.height,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            autoPlayInterval: Duration(seconds: 4),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            autoPlay: true,
          ),
          items: [1, 2, 3, 4, 5, 6,7,8].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/wallpaper/${i}.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: size.width,
            height: size.height / 3.5,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.4),
            ),
            child: Text(
              'One of the most important findings in the study is that singles are not interested in seeing an idealized depiction of potential partners through edited photos and unrealistic positive self-descriptors. The truth is, singles want more honest, authentic depictions of others and themselves on dating apps. A more realistic portrayal of each individual will not only be refreshing, but also lead to more meaningful connections',
              style: TextStyle(
                  color: Colors.black.withOpacity(1),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontStyle: FontStyle.italic),
            ),
          ),
        )
      ],
    ));
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}

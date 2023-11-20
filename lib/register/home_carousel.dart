// ignore_for_file: avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/register/login.dart';

import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_fitness_application/register/welcome.dart';

class MyCraousel extends StatefulWidget {
  const MyCraousel({super.key});

  @override
  State<MyCraousel> createState() => _MyCraouselState();
}

class _MyCraouselState extends State<MyCraousel> {
  final List<String> imgList = [
    'asset/img/card_goals1.png',
    'asset/img/card_goals2.png',
    'asset/img/card_goals3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 35)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('What is your goal ?',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      // height: 0.07,
                    )),
              ),
            ],
          ),
          const SizedBox(
            width: 182,
            child: Text(
              'It will help us to choose a best program for you',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF7B6F72),
                fontSize: 12,
                // fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
          ),
          Container(
              child: CarouselSlider(
                  options: CarouselOptions(
                    height: 500,
                    viewportFraction: 0.75,
                    // viewportFraction: 1,
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    // aspectRatio: 2,
                    enlargeCenterPage: true,
                  ),
                  items: imgList
                      .map((item) => Container(
                            child: Container(
                              // margin: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.network(
                                        item,
                                        // fit: BoxFit.cover,
                                        // width: 1000.0,
                                        height: 1000,
                                      ),
                                      Positioned(
                                        bottom: 0.0,
                                        left: 0.0,
                                        right: 0.0,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 20.0),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ))
                      .toList())),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFCC8FED),
                minimumSize: const Size(315, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(99))),
            child: const Text('Confirm'),
          )
        ],
      ),
    );
  }
}

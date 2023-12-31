import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/register/form_name.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCarousel extends StatelessWidget {
  MyCarousel({super.key});

  final List<String> imgList = [
    'asset/img/card_goals1.png',
    'asset/img/card_goals2.png',
    'asset/img/card_goals3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Container(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(
                                    item,
                                    height: 1000,
                                  ),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10.0,
                                        horizontal: 20.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormName()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFCC8FED),
                foregroundColor: Colors.white,
                minimumSize: const Size(315, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
              child: const Text('Confirm'),
            )
          ],
        ),
      ),
    );
  }
}

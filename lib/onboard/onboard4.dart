import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/register/home_carousel.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard4 extends StatelessWidget {
  const Onboard4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyCraousel()));
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'asset/img/onboard4.png',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 35,
                    width: 315,
                  ),
                  Text(
                    'Improve Sleep \nQuality',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF1D1517),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      // height: 0.06,
                    ),
                  ),
                  SizedBox(
                    width: 315,
                    height: 80,
                    child: Text(
                      'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFFB6B4C1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

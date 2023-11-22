import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/onboard/onboard.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFEEA4CE),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(-1.00, 0.08),
                end: Alignment(1, -0.08),
                colors: [Color(0xFFC050F6), Color(0xFFEEA4CE)])),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('DIDPOOL',
                    style: GoogleFonts.poppins(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.w700)),
                Text(
                  'Fit',
                  style: GoogleFonts.poppins(
                    fontSize: 36,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Text(
              'Everybody Can Train',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 200,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Onboard1()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFCC8FED),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(315, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99))),
              child: const Text(
                'Get Started',
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/onboard/onboard4.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard3 extends StatelessWidget {
  const Onboard3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Onboard4()));
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            'asset/img/onboard3.png',
          ),
          Container(
              margin: const EdgeInsets.only(
                top: 64,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                    width: 315,
                    child: Text(
                      'Eat Well',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF1D1517),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 315,
                    child: Text(
                      'Let\'s start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFFB6B4C1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

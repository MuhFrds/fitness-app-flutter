import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/onboard/onboard2.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboard1 extends StatelessWidget {
  const Onboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Onboard2()));
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            'asset/img/onboard1.png',
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
                      'Track Your Goal',
                      style: GoogleFonts.poppins(
                        color: Color(0xFF1D1517),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 315,
                    child: Text(
                      'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
                      style: GoogleFonts.poppins(
                        color: Color(0xFFB6B4C1),
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

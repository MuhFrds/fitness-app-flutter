import 'package:flutter/material.dart';
import 'package:flutter_fitness_application/home/home.dart';
// import 'package:flutter_fitness_application/register/login.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 102),
            child: Image.asset(
              'asset/img/welcome1.png',
              height: 292,
            ),
          ),
          Container(
              margin: const EdgeInsets.only(
                top: 64,
              ),
              child: Column(
                children: [
                  SizedBox(
                    // height: 5,
                    // width: 49,

                    child: Text(
                      'Welcome, $name',
                      style: GoogleFonts.poppins(
                        color: const Color(0xFF1D1517),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  SizedBox(
                    width: 250,
                    height: 50,
                    child: Text(
                      'You are all set now, let\'s reach your goals together with us',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: const Color(0xFFB6B4C1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        // height: 0.12,
                      ),
                    ),
                  ),
                ],
              )),
          const Padding(padding: EdgeInsets.only(top: 60)),
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MenuHome()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFCC8FED),
                    minimumSize: const Size(315, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99))),
                child: const Text('Go To Home'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
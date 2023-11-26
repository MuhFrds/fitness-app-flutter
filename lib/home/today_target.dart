import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayTarget extends StatelessWidget {
  const TodayTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 22,
        left: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today Target',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 130,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(children: [
                      const Padding(padding: EdgeInsets.only(left: 9)),
                      Container(
                        width: 25,
                        height: 34,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/img/glass1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '8L',
                              style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Water',
                              style: GoogleFonts.openSans(
                                color: const Color(0xFFA3A8AC),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 130,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(children: [
                      const Padding(padding: EdgeInsets.only(left: 9)),
                      Container(
                        width: 26,
                        height: 26,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('asset/img/boots1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '2400',
                              style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Foot Steps',
                              style: GoogleFonts.openSans(
                                color: const Color(0xFFA3A8AC),
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

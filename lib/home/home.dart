import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SafeArea(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcoome Back,',
                          style: GoogleFonts.poppins(
                            color: const Color(0xFFA5A3AF),
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Uzumaki Madara',
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF1D1517),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x111D1617),
                            blurRadius: 40,
                            offset: Offset(0, 10),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Icon(Icons.notifications),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 315,
              height: 146,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(-1.00, 0.08),
                  end: Alignment(1, -0.08),
                  colors: [Color(0xFF00FF66), Color(0xFF00EFFF)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x4C95ADFE),
                    blurRadius: 22,
                    offset: Offset(0, 10),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
            Opacity(
              opacity: 0.20,
              child: Container(
                width: 315,
                height: 139,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1.00, 0.08),
                    end: Alignment(1, -0.08),
                    colors: [Color(0xFFC050F6), Color(0xFFEEA4CE)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest Activity',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF1D1517),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See More',
                    style: GoogleFonts.poppins(
                      color: const Color(0xFFA5A3AF),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
                width: 315,
                height: 80,
                decoration: ShapeDecoration(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                )),
            Container(
                margin: const EdgeInsets.only(top: 15),
                width: 315,
                height: 80,
                decoration: ShapeDecoration(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

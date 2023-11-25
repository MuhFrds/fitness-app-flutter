import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestAja extends StatefulWidget {
  const TestAja({super.key});

  @override
  State<TestAja> createState() => _TestAjaState();
}

class _TestAjaState extends State<TestAja> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 315,
                height: 139,
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(-1.00, 0.08),
                    end: Alignment(1, -0.08),
                    colors: [
                      Color(0xFFEEA4CE),
                      Color(0xFFC050F6),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
                // child: const TodayTarget(),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 22, left: 20, right: 150, bottom: 96),
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
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

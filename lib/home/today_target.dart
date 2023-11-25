import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayTarget extends StatefulWidget {
  const TodayTarget({super.key});

  @override
  State<TodayTarget> createState() => _TodayTargetState();
}

class _TodayTargetState extends State<TodayTarget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22, left: 20, right: 150, bottom: 96),
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
    );
  }
}

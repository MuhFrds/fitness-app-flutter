import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

class SaranHarian extends StatefulWidget {
  const SaranHarian({super.key});

  @override
  State<SaranHarian> createState() => _SaranHarianState();
}

class _SaranHarianState extends State<SaranHarian> {
  List<String> saranList = [
    'Saran 1',
    'Saran 2',
    'Saran 3',
    'Saran 4',
    'Saran 5',
    'Saran 6',
  ];

  String randomSaran = '';

  @override
  void initState() {
    super.initState();
    randomSaran = saranList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26, left: 20, right: 190),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.only(bottom: 5)),
          Text(
            'Saran Harian',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            randomSaran,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 15)),
          ElevatedButton(
            onPressed: () {
              setState(() {
                randomSaran = saranList[Random().nextInt(saranList.length)];
              });
            },
            child: const Text('Refresh'),
          ),
        ],
      ),
    );
  }
}

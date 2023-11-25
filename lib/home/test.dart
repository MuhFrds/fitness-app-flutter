// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class TestAja extends StatefulWidget {
//   const TestAja({super.key});

//   @override
//   State<TestAja> createState() => _TestAjaState();
// }

// class _TestAjaState extends State<TestAja> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 margin: const EdgeInsets.only(bottom: 20),
//                 width: 315,
//                 height: 146,
//                 decoration: ShapeDecoration(
//                   gradient: const LinearGradient(
//                     begin: Alignment(-1.00, 0.08),
//                     end: Alignment(1, -0.08),
//                     colors: [Color(0xFF00FF66), Color(0xFF00EFFF)],
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(22),
//                   ),
//                   shadows: const [
//                     BoxShadow(
//                       color: Color(0x4C95ADFE),
//                       blurRadius: 22,
//                       offset: Offset(0, 10),
//                       spreadRadius: 0,
//                     )
//                   ],
//                 ),
//                 child: Row(
//                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(top: 26, left: 20, right: 190),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Padding(padding: EdgeInsets.only(bottom: 5)),
//                           Text(
//                             'Saran Harian',
//                             style: GoogleFonts.poppins(
//                               color: Colors.white,
//                               fontSize: 14,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           Text(
//                             'Saran 1',
//                             style: GoogleFonts.poppins(
//                               color: Colors.white,
//                               fontSize: 12,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           const Padding(padding: EdgeInsets.only(bottom: 15)),
//                           ElevatedButton(
//                             onPressed: () {
//                               setState(() {});
//                             },
//                             child: const Text('Refresh'),
//                           ),
//                         ],
//                       ),
//                     )
//                     // SaranHarian(),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestAja extends StatefulWidget {
  const TestAja({Key? key}) : super(key: key);

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
                child: Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 26, left: 20, right: 20),
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
                            'Saran 1',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 15)),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {});
                            },
                            child: const Text('Refresh'),
                          ),
                        ],
                      ),
                    ),
                    // Add an Image widget here
                    Padding(padding: EdgeInsets.only(left: 60)),
                    Image.asset(
                      'asset/img/piechart.png',
                      width: 80, // Adjust the width as needed
                      height: 80, // Adjust the height as needed
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

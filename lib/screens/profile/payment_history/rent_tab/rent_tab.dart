import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RentTab extends StatefulWidget {
  const RentTab({Key? key}) : super(key: key);

  @override
  State<RentTab> createState() => _RentTabState();
}

class _RentTabState extends State<RentTab> {
  @override
  Widget build(BuildContext context) {
    final Color background = Color(0xffB7FFE1);
    final Color fill = Colors.white;
    final List<Color> gradient = [
      background,
      background,
      fill,
      fill,
    ];
    final double fillPercent = 38.78; // fills 56.23% for container from bottom
    final double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 1.0];

    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: Container(
          padding: EdgeInsets.only(top: 20, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    '18.10.22',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w300, height: 2),
                  ),
                ),
                Container(
                  height: 196,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: gradient,
                      stops: stops,
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      children: [

                      ],
                    ),
                  ),
                ),
              ],),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    '18.10.22',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w300, height: 2),
                  ),
                ),
                Container(
                  height: 196,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: gradient,
                      stops: stops,
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      children: [

                      ],
                    ),
                  ),
                ),
              ],),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Август 2022',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 20, height: 3),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text(
                        '18.10.22',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            height: 2),
                      ),
                    ),
                    Column(
                      children: [
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
                            // margin: EdgeInsets.all(15),
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 15,
                                    top: 15,
                                    child: Text(
                                      'Сумма оплаты: ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          height: 1.92,
                                          color: Color(0xff100C27)),
                                    )),
                                Positioned(
                                    left: 15,
                                    top: 79,
                                    child: Text(
                                      'Платёж: ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          height: 1.92,
                                          color: Color(0xff100C27)),
                                    )),
                                Positioned(
                                    left: 15,
                                    bottom: 35,
                                    child: Text(
                                      'Тип: ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          height: 1.92,
                                          color: Color(0xff100C27)),
                                    )),
                                Positioned(
                                    top: 8,
                                    right: 98,
                                    child: Text(
                                      '15.000',
                                      style: GoogleFonts.poppins(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          height: 1.92,
                                          color: Color(0xff100C27)),
                                    )),
                                Positioned(
                                    right: 98,
                                    top: 77,
                                    child: Text(
                                      'Kaspi',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          height: 1.92,
                                          color: Color(0xff100C27)),
                                    )),
                                Positioned(
                                    left: 55,
                                    bottom: 36,
                                    child: Text(
                                      'Аренда',
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          height: 1.92,
                                          color: Color(0xff100C27)),
                                    )),
                                Positioned(
                                    top: 15,
                                    right: 83,
                                    child: SvgPicture.asset(
                                        'assets/images/vertical_divider.svg')),
                                Positioned(
                                    top: 15,
                                    right: 15,
                                    child: Image.asset(
                                      'assets/icons/agreed.png',
                                      width: 30,
                                      height: 30,
                                    )),
                                Positioned(
                                    top: 88,
                                    right: 15,
                                    child: Text(
                                      '18.10.22',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          height: 1.68,
                                          color: Color(0xff100C27)),
                                    )),
                                Positioned(
                                    bottom: 15,
                                    right: 15,
                                    child: Text(
                                      '18.10.22',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          height: 1.68,
                                          color: Color(0xff747474)),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

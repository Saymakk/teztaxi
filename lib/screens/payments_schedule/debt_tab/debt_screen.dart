import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teztaxi/screens/payments/payment_screen.dart';

class DebtScreen extends StatefulWidget {
  const DebtScreen({Key? key}) : super(key: key);

  @override
  State<DebtScreen> createState() => _DebtScreenState();
}

class _DebtScreenState extends State<DebtScreen> {
  @override
  Widget build(BuildContext context) {
    final Color background = Color(0xffFFE3E3);
    final Color fill = Colors.white;
    final List<Color> gradient = [
      background,
      background,
      fill,
      fill,
    ];
    final double fillPercent = 56; // fills 56.23% for container from bottom
    final double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 1.0];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  color: Color(0xffFEFAF8),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35))),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      '18.10.22',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w300, height: 2),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 352,
                        width: double.infinity,
                        // margin: EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: gradient,
                            stops: stops,
                            end: Alignment.bottomCenter,
                            begin: Alignment.topCenter,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              child: Text(
                                'Сумма оплаты:',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              top: 22,
                              left: 15,
                            ),
                            Positioned(
                              child: Text(
                                'Оплачено:',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              top: 56,
                              left: 15,
                            ),
                            Positioned(
                              child: Text(
                                'Остаток:',
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              top: 115,
                              left: 15,
                            ),
                            Positioned(
                              child: Row(
                                children: [
                                  Text(
                                    'Тип: ',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'От компании',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              top: 170,
                              left: 15,
                            ),
                            Positioned(
                              child: Text(
                                'Штраф за не соблюдение',
                                maxLines: 2,
                                style: GoogleFonts.poppins(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              top: 199,
                              left: 15,
                            ),
                            Positioned(
                              child: GestureDetector(
                                onTap: () => Get.to(() => PaymentScreen(),
                                    transition: Transition.rightToLeft),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff21cac8),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: 13, horizontal: 97),
                                    child: Text(
                                      'Оплатить',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              bottom: 47,
                              left: 15,
                              right: 15,
                            ),
                            Positioned(
                              child: Text(
                                '18:30',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff747474),
                                ),
                              ),
                              bottom: 15,
                              right: 15,
                            ),
                            Positioned(
                              child: Text(
                                '2000',
                                style: GoogleFonts.poppins(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                              top: 15,
                              right: 98,
                            ),
                            Positioned(
                              child: Text(
                                '0',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              top: 54,
                              right: 98,
                            ),
                            Positioned(
                              child: Text(
                                '2000',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              top: 114,
                              right: 98,
                            ),
                            Positioned(
                                top: 15,
                                right: 83,
                                // bottom: 223,
                                child: SvgPicture.asset(
                                    'assets/icons/vertical_red.svg')),
                            Positioned(
                                top: 15,
                                right: 15,
                                child: Image.asset(
                                  'assets/icons/x.png',
                                  width: 30,
                                  height: 30,
                                )),
                            Positioned(
                              child: Text(
                                '18:30',
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff747474),
                                ),
                              ),
                              top: 118,
                              right: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

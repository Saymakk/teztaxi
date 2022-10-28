import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teztaxi/screens/payments/payment_agreed.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var pay_type = 'kaspi';

  @override
  Widget build(BuildContext context) {
    final Color background = Color(0xffFFF9DD);
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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 59,
          shadowColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Color(0xff1C2340),
              )),
          title: Text(
            'Оплата платежа',
            style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                height: 1.3),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 35),
                      height: 199,
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
                                bottom: 15,
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
                                bottom: 17,
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
                                  'assets/icons/vertical_yellow.svg',
                                  height: 95,
                                )),
                            Positioned(
                                top: 15,
                                right: 15,
                                child: Image.asset(
                                  'assets/icons/minus.png',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: Colors.white),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Внести оплату',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xff100c27)),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 20),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xfff4f5f7)),
                              child: Container(
                                  padding: EdgeInsets.only(left: 15),
                                  // margin: EdgeInsets.all(15),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Укажите сумму',
                                        hintStyle: GoogleFonts.poppins(
                                            color: Color(0xff8a8d9f))),
                                    keyboardType: TextInputType.phone,
                                  )),
                            ),
                            Text(
                              'Способ оплаты',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color(0xff100c27)),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  pay_type = 'kaspi';
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: 10,
                                ),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xfff4f5f7)),
                                child: Container(
                                  margin: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/kaspi_small.png',
                                        width: 41,
                                        height: 41,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Kaspi баланс',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              '15.200,25',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                      pay_type == 'kaspi'
                                          ? Image.asset(
                                              'assets/icons/agreed.png',
                                              width: 30,
                                              height: 30,
                                            )
                                          : SizedBox(
                                              width: 0,
                                              height: 0,
                                            ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  pay_type = 'ya';
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 10, bottom: 21),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xfff4f5f7)),
                                child: Container(
                                  margin: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/ya_small.png',
                                        width: 41,
                                        height: 41,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Kaspi баланс',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              '15.200,25 ',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                      pay_type == 'ya'
                                          ? Image.asset(
                                              'assets/icons/agreed.png',
                                              width: 30,
                                              height: 30,
                                            )
                                          : SizedBox(
                                              width: 0,
                                              height: 0,
                                            ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => AgreedScreen()),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff21cac8),
                                ),
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 13),
                                  child: Text(
                                    'Оплатить',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Color(0xff100c27)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

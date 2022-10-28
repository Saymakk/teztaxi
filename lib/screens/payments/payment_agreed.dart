import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teztaxi/constants/bottom_app_bar.dart';
import 'package:teztaxi/screens/payments_schedule/debt_tab/debt_screen.dart';

class AgreedScreen extends StatefulWidget {
  const AgreedScreen({Key? key}) : super(key: key);

  @override
  State<AgreedScreen> createState() => _AgreedScreenState();
}

class _AgreedScreenState extends State<AgreedScreen> {

  double op1 = 0;
  double op2 = .4;
  double op3 = 1;
  bool _visible = true;

  Timer? countdownTimer;
  Duration myDuration = Duration(hours: 1);

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
     });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xffFFE14D),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: Center(
              child: Container(
                margin: EdgeInsets.only(bottom: 65),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white.withOpacity(.2)),
                width: 190,
                height: 190,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(.4)),
                    width: 144,
                    height: 144,
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        width: 88,
                        height: 88,
                        child: Center(
                          child: Icon(
                            Icons.done,
                            size: 45,
                            color: Color(0xff21cac8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Text(
            'Счёт оплачен',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          SizedBox(height: 10),
          Text(
            'Оплата платежа прошла успешно!',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          GestureDetector(
            onTap: (){
              Get.to(()=>BottomNav(), transition: Transition.leftToRight);
            },
            child: Container(
              margin: EdgeInsets.only(top: 60),
              decoration: BoxDecoration(
                  color: Color(0xff21CAC8),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 62, vertical: 13),
                child: Text(
                  'Вернуться к платежам',
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

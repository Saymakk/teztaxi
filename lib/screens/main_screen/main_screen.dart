import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            margin: EdgeInsets.only(left: 24, right: 24, top: 30),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Новости',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 28,
                                color: Color(0xff100C27),
                                height: 1.3)),
                      )),
                      Text(
                        'Смотреть всё',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: Color(0xff8F919C),
                                height: 1.3)),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 247,
                        height: 150,
                        margin: EdgeInsets.only(right: 18.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/ex1.png',
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              top: 15, left: 15,
                              child: Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5, top: 3, right: 5, bottom: 3),
                                    child: Text(
                                      'Ремонт',
                                      style: GoogleFonts.poppins(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff100c27)),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        width: 247,
                        height: 150,
                        margin: EdgeInsets.only(right: 18.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/ex1.png',
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              top: 15, left: 15,
                              child: Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 5, top: 3, right: 5, bottom: 3),
                                    child: Text(
                                      'Рубрика',
                                      style: GoogleFonts.poppins(
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff100c27)),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

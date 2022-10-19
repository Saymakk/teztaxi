import 'package:flutter/material.dart';
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
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, left: 24, right: 24),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 247,
                            height: 150,
                            margin: EdgeInsets.only(right: 18.5, bottom: 15),
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
                                  top: 15,
                                  left: 15,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            top: 3,
                                            right: 5,
                                            bottom: 3),
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
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Налоги на транспорт',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff100c27),
                                    height: 1.3),
                              ),
                            ),
                          ),
                          Text(
                            'На сколько сильно изменится жизнь',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  // fontWeight: FontWeight.w600,
                                  color: Color(0xff8F919C),
                                  height: 1.3),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 247,
                            height: 150,
                            margin: EdgeInsets.only(right: 18.5, bottom: 15),
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
                                  top: 15,
                                  left: 15,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            top: 3,
                                            right: 5,
                                            bottom: 3),
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
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Незаменимый элемент',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff100c27),
                                    height: 1.3),
                              ),
                            ),
                          ),
                          Text(
                            'У каких авто будет',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  // fontWeight: FontWeight.w600,
                                  color: Color(0xff8F919C),
                                  height: 1.3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    children: [Row(
                      children: [

                      ],
                    )],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

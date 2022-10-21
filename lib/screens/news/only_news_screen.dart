import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnlyNewsScreen extends StatefulWidget {
  const OnlyNewsScreen({Key? key}) : super(key: key);

  @override
  State<OnlyNewsScreen> createState() => _OnlyNewsScreenState();
}

class _OnlyNewsScreenState extends State<OnlyNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 59,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff1c2340),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'News Title',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Color(0xff100c27),
              height: 1.3),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Container(
                          width: double.infinity,
// height: 215,
                          margin: EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        topLeft: Radius.circular(15)),
                                    child: Image.asset(
                                      'assets/images/ex3.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 5, left: 15),
                                  child: Text(
                                    'Налоги на транспорт',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            height: 1.3,
                                            color: Color(0xff100C27))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    'На сколько сильно изменится жизнь в Казахстане после введения новой цены на налоги до некоторого времени оставалось загадкой. После чего мы решили провести анализ того, как сильно за последние годы росла цена. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16,
// fontWeight: FontWeight.w600,
                                            height: 1.3,
                                            color: Color(0xff8F919C))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 34),
                                  child: Text('Дата публикации: 28.09.22',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 16,
// fontWeight: FontWeight.w600,
                                            height: 1.3,
                                            color: Color(0xff8F919C))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 23,
                        left: 26,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: 7, right: 7, top: 5, bottom: 5),
                              child: Text(
                                'Ремонт',
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                        height: 1.3,
                                        color: Color(0xff100c27))),
                              )),
                        ),
                      ),
                    ],
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

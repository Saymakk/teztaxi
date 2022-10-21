import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:teztaxi/screens/news/only_news_screen.dart';

class AllNewsScreen extends StatefulWidget {
  const AllNewsScreen({Key? key}) : super(key: key);

  @override
  State<AllNewsScreen> createState() => _AllNewsScreenState();
}

class _AllNewsScreenState extends State<AllNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9FF),
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
          'Новости',
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
                  child: GestureDetector(
                    onTap: () {
                      // Get.to(
                      //   () => OnlyNewsScreen(),
                      //   transition: Transition.rightToLeftWithFade,
                      // );
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: OnlyNewsScreen(),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation: PageTransitionAnimation.cupertino,
                      );
                    },
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
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),

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
                                      'Незаменимый элемент',
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
                                      'У каких авто будет наша страховка',
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
                                  'Рубрика',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

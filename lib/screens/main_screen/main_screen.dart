import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:teztaxi/screens/news/all_news_screen.dart';
import 'package:teztaxi/screens/news/only_news_screen.dart';
import 'package:teztaxi/screens/profile/profile_screen.dart';

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
                      GestureDetector(
                        onTap: () {
                          // Get.to(() => AllNewsScreen());
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: AllNewsScreen(),
                            withNavBar: true,
                            // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Text(
                          'Смотреть все',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: Color(0xff8F919C),
                                  height: 1.3)),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    transform: Matrix4.translationValues(24.0, 0.0, 0.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: OnlyNewsScreen(),
                              withNavBar: true,
                              // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 247,
                                height: 150,
                                margin:
                                    EdgeInsets.only(right: 18.5, bottom: 15),
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
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                ),
                Container(
                  margin:
                      EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Профиль',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff100C27),
                                height: 1.3),
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff21CAC8),
                              ),
                              child: Container(
                                  margin: EdgeInsets.only(top: 20, left: 20),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: Text(
                                            'Омар Женис Картбайулы',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                  height: 1.2),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 47),
                                          child: Text(
                                            'Гос. номер: 103ABK02',
                                            style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color(0xff100C27),
                                                  height: 1.2),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                            Positioned(
                              child: GestureDetector(
                                onTap: () => Get.to(() => ProfileScreen()),
                                child: Image.asset(
                                  'assets/icons/open.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              bottom: 15,
                              right: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF4F5F7),
                        borderRadius: BorderRadius.circular(9)),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: (Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Kaspi баланс',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff100C27),
                                          height: 1.3),
                                    ),
                                  ),
                                ),
                                Text(
                                  '15.200,25 ₸',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff100C27),
                                      height: 1.2),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/images/kaspi.png',
                            width: 118,
                            height: 45,
                          )
                        ],
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 22, bottom: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xffF4F5F7),
                        borderRadius: BorderRadius.circular(9)),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: (Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Яндекс баланс',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff100C27),
                                          height: 1.3),
                                    ),
                                  ),
                                ),
                                Text(
                                  '10.600,84 ₸',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff100C27),
                                      height: 1.2),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/images/yandex.png',
                            width: 118,
                            height: 73,
                          )
                        ],
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              'На сегодня',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff100C27),
                                    height: 1.3),
                              ),
                            )),
                            Image.asset(
                              'assets/icons/open_turq.png',
                              width: 30,
                              height: 30,
                            )
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                    top: 45, bottom: 25, left: 35, right: 35),
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                    color: Color(0xffFFE14D),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          '2.000',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 26,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff100C27),
                                                height: 1.3),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 5),
                                            width: 82,
                                            child: Text(
                                              'Оплата по долгам',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.w600,
                                                    color: Color(0xff100C27),
                                                    height: 1.3),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 30, bottom: 20, left: 30, right: 30),
                                decoration: BoxDecoration(
                                    color: Color(0xffFFE14D),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          '10.000',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 26,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff100C27),
                                                height: 1.3),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 5),
                                            // width: 97,
                                            child: Text(
                                              'Общий долг',
                                              // textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.w600,
                                                    color: Color(0xff100C27),
                                                    height: 1.3),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 20),
                                padding: EdgeInsets.only(
                                    top: 30, bottom: 20, left: 35, right: 35),
                                decoration: BoxDecoration(
                                    color: Color(0xffFFE14D),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          '11.500',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 26,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff100C27),
                                                height: 1.3),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 5),
                                            // width: 97,
                                            child: Text(
                                              'Аренда',
                                              // textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.w600,
                                                    color: Color(0xff100C27),
                                                    height: 1.3),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 45, bottom: 25, left: 35, right: 35),
                                margin: EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                    color: Color(0xffFFE14D),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          '1 день',
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                fontSize: 26,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff100C27),
                                                height: 1.3),
                                          ),
                                        ),
                                        Container(
                                            margin: EdgeInsets.only(top: 5),
                                            width: 82,
                                            child: Text(
                                              'Срок путевого листа',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.w600,
                                                    color: Color(0xff100C27),
                                                    height: 1.3),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20, left: 24, right: 24, top: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Акции',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 28,
                                color: Color(0xff100C27),
                                height: 1.3)),
                      )),
                      Text(
                        'Смотреть все',
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
                  child: Container(
                    margin: EdgeInsets.only(bottom: 44),
                    transform: Matrix4.translationValues(24.0, 0.0, 0.0),
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                'Успей! Только 3 дня',
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
                              'Супер акция для замены шин',
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                                'Не упусти свой шанс',
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
                              'К нам поступило много предложений',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

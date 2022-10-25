import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswersScreen extends StatefulWidget {
  const AnswersScreen({Key? key}) : super(key: key);

  @override
  State<AnswersScreen> createState() => _AnswersScreenState();
}

class _AnswersScreenState extends State<AnswersScreen> {
  bool ask1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE14D),
      appBar: AppBar(
        // systemOverlayStyle: SystemUiOverlayStyle(
        //   // Status bar color
        //   statusBarColor: Colors.transparent,
        //   systemNavigationBarColor: Colors.yellow,
        //   // Status bar brightness (optional)
        //   statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        //   statusBarBrightness: Brightness.light, // For iOS (dark icons)
        // ),
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
          'Ответы на вопросы',
          style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.3),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top: 50, left: 24, right: 24),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35))),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  ask1 = !ask1;
                }),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9FF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin:
                        EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Что делать при ДТП?',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    ask1 = !ask1;
                                  });
                                },
                                icon: ask1 == false
                                    ? (Image.asset('assets/icons/open_turq.png'))
                                    : Image.asset('assets/icons/close_turq.png'))
                          ],
                        ),
                        Visibility(
                          visible: ask1,
                          child: Column(
                            children: [
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'В первую очередь нужно обратиться к сотруднику - написать в WhatsApp или позвонить на номер указанный в разделе “Служба поддержки”',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                  ),
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
              GestureDetector(
                onTap: () => setState(() {
                  ask1 = !ask1;
                }),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9FF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Как разобраться в оплате?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    ask1 = !ask1;
                                  });
                                },
                                icon: ask1 == false
                                    ? (Image.asset('assets/icons/open_turq.png'))
                                    : Image.asset('assets/icons/close_turq.png'))
                          ],
                        ),
                        Visibility(
                          visible: ask1,
                          child: Column(
                            children: [
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'В первую очередь нужно обратиться к сотруднику - написать в WhatsApp или позвонить на номер указанный в разделе “Служба поддержки”',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                  ),
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
              GestureDetector(
                onTap: () => setState(() {
                  ask1 = !ask1;
                }),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9FF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Для чего путевой лист?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    ask1 = !ask1;
                                  });
                                },
                                icon: ask1 == false
                                    ? (Image.asset('assets/icons/open_turq.png'))
                                    : Image.asset('assets/icons/close_turq.png'))
                          ],
                        ),
                        Visibility(
                          visible: ask1,
                          child: Column(
                            children: [
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'В первую очередь нужно обратиться к сотруднику - написать в WhatsApp или позвонить на номер указанный в разделе “Служба поддержки”',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                  ),
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
              GestureDetector(
                onTap: () => setState(() {
                  ask1 = !ask1;
                }),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9FF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Как оспорить штраф?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    ask1 = !ask1;
                                  });
                                },
                                icon: ask1 == false
                                    ? (Image.asset('assets/icons/open_turq.png'))
                                    : Image.asset('assets/icons/close_turq.png'))
                          ],
                        ),
                        Visibility(
                          visible: ask1,
                          child: Column(
                            children: [
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'В первую очередь нужно обратиться к сотруднику - написать в WhatsApp или позвонить на номер указанный в разделе “Служба поддержки”',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                  ),
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
              GestureDetector(
                onTap: () => setState(() {
                  ask1 = !ask1;
                }),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9FF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Крайние сроки по оплатам?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    ask1 = !ask1;
                                  });
                                },
                                icon: ask1 == false
                                    ? (Image.asset('assets/icons/open_turq.png'))
                                    : Image.asset('assets/icons/close_turq.png'))
                          ],
                        ),
                        Visibility(
                          visible: ask1,
                          child: Column(
                            children: [
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'В первую очередь нужно обратиться к сотруднику - написать в WhatsApp или позвонить на номер указанный в разделе “Служба поддержки”',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                  ),
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
              GestureDetector(
                onTap: () => setState(() {
                  ask1 = !ask1;
                }),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9FF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Как оспорить штраф?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    ask1 = !ask1;
                                  });
                                },
                                icon: ask1 == false
                                    ? (Image.asset('assets/icons/open_turq.png'))
                                    : Image.asset('assets/icons/close_turq.png'))
                          ],
                        ),
                        Visibility(
                          visible: ask1,
                          child: Column(
                            children: [
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'В первую очередь нужно обратиться к сотруднику - написать в WhatsApp или позвонить на номер указанный в разделе “Служба поддержки”',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                  ),
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
              GestureDetector(
                onTap: () => setState(() {
                  ask1 = !ask1;
                }),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9FF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Почему не проходит платеж?',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    ask1 = !ask1;
                                  });
                                },
                                icon: ask1 == false
                                    ? (Image.asset('assets/icons/open_turq.png'))
                                    : Image.asset('assets/icons/close_turq.png'))
                          ],
                        ),
                        Visibility(
                          visible: ask1,
                          child: Column(
                            children: [
                              Divider(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'В первую очередь нужно обратиться к сотруднику - написать в WhatsApp или позвонить на номер указанный в разделе “Служба поддержки”',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    // fontWeight: FontWeight.bold,
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}

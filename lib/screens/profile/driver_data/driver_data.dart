import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DriverDataScreen extends StatefulWidget {
  const DriverDataScreen({Key? key}) : super(key: key);

  @override
  State<DriverDataScreen> createState() => _DriverDataScreenState();
}

class _DriverDataScreenState extends State<DriverDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 59,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: Text(
          'Данные водителя',
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Color(0xff100c27),
              height: 1.3),
        ),
      ),
      backgroundColor: Color(0xffF9F9FF),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Имя',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4F5F7),
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          margin:
                              EdgeInsets.only(top: 18, left: 15, bottom: 13),
                          child: Text(
                            'Омар',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8A8D9F)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Фамилия',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4F5F7),
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          margin:
                          EdgeInsets.only(top: 18, left: 15, bottom: 13),
                          child: Text(
                            'Картбайулы',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8A8D9F)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Отчество',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4F5F7),
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          margin:
                          EdgeInsets.only(top: 18, left: 15, bottom: 13),
                          child: Text(
                            'Женис',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8A8D9F)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ИИН',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4F5F7),
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          margin:
                          EdgeInsets.only(top: 18, left: 15, bottom: 13),
                          child: Text(
                            '401 568 276 643',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8A8D9F)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Дата рождения',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4F5F7),
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          margin:
                          EdgeInsets.only(top: 18, left: 15, bottom: 13),
                          child: Text(
                            '18.10.1994',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8A8D9F)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Номер телефона',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4F5F7),
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          margin:
                          EdgeInsets.only(top: 18, left: 15, bottom: 13),
                          child: Text(
                            '+ 7 775 864 25 52',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8A8D9F)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Гос. номер',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4F5F7),
                        ),
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          margin:
                          EdgeInsets.only(top: 18, left: 15, bottom: 13),
                          child: Text(
                            '103ABK02',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff8A8D9F)),
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
      ),
    );
  }
}

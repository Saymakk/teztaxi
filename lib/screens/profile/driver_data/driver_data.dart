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
                  Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            ListTile(
                              title: Text('Имя',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 16),),
                              trailing: Text('Омар',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8A8D9F)),),
                              contentPadding: EdgeInsets.all(0),
                            ),
                            Divider(
                              height: 1,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ListTile(
                              title: Text('Фамилия',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 16),),
                              trailing: Text('Картбайулы',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8A8D9F)),),
                              contentPadding: EdgeInsets.all(0),
                            ),
                            Divider(
                              height: 1,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ListTile(
                              title: Text('Отчество',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 16),),
                              trailing: Text('Женис',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8A8D9F)),),
                              contentPadding: EdgeInsets.all(0),
                            ),
                            Divider(
                              height: 1,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ListTile(
                              title: Text('ИИН',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 16),),
                              trailing: Text('401 123 312 141',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8A8D9F)),),
                              contentPadding: EdgeInsets.all(0),
                            ),
                            Divider(
                              height: 1,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ListTile(
                              title: Text('Дата рождения',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 16),),
                              trailing: Text('18.10.93',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8A8D9F)),),
                              contentPadding: EdgeInsets.all(0),
                            ),
                            Divider(
                              height: 1,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ListTile(
                              title: Text('Номер телефона',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 16),),
                              trailing: Text('+7 705 123 8989',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8A8D9F)),),
                              contentPadding: EdgeInsets.all(0),
                            ),
                            Divider(
                              height: 1,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ListTile(
                              title: Text('Гос. номер',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 16),),
                              trailing: Text('130AVF02',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff8A8D9F)),),
                              contentPadding: EdgeInsets.all(0),
                            ),
                        
                          ],
                        ),
                      ],
                    ),
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

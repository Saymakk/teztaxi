import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeLangScreen extends StatefulWidget {
  const ChangeLangScreen({Key? key}) : super(key: key);

  @override
  State<ChangeLangScreen> createState() => _ChangeLangScreenState();
}

class _ChangeLangScreenState extends State<ChangeLangScreen> {

  int lang = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFE14D),
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
          'Язык приложения',
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
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                  color: Color(0xffF9F9FF),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                  margin:
                      EdgeInsets.only(left: 20, top: 20, right: 15, bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 30,
                        ),
                        child: Text(
                          'По умолчанию будет использоваться первый в списке язык',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff222B45),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          'Выберите язык',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff222B45),
                          ),
                        ),
                      ),
                      Divider(color: Color(0xff707070), height: 1,),
                      InkWell(
                        onTap: ()=>setState(() {
                          lang = 0;
                        }),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Русский'),

                              lang == 0 ? Icon(Icons.check_circle_rounded, color: Color(0xff21CAC8), size: 30,) : Icon(null),
                            ],
                          ),
                        ),
                      ),
                      Divider(color: Color(0xff707070), height: 1,),
                      InkWell(
                        onTap: ()=>setState(() {
                          lang = 1;
                        }),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Казахский'),

                              lang == 1 ? Icon(Icons.check_circle_rounded, color: Color(0xff21CAC8), size: 30,) : Icon(null),
                            ],
                          ),
                        ),
                      ),
                      Divider(color: Color(0xff707070), height: 1,),
                      InkWell(
                        onTap: ()=>setState(() {
                          lang = 2;
                        }),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Узбекский'),

                              lang == 2 ? Icon(Icons.check_circle_rounded, color: Color(0xff21CAC8), size: 30,) : Icon(null),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              decoration: BoxDecoration(color: Color(0xffffe14d), borderRadius: BorderRadius.circular(10  )),
              margin: EdgeInsets.only(top: 80),
              child: Container(
                  margin: EdgeInsets.symmetric( vertical: 13),
                  child: Center(child: Text('Подтвердить'),)),
            ),
          ],
        ),
      ),
    );
  }
}

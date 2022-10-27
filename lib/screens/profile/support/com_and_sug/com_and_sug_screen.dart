import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ComAndSugScreen extends StatefulWidget {
  const ComAndSugScreen({Key? key}) : super(key: key);

  @override
  State<ComAndSugScreen> createState() => _ComAndSugScreenState();
}

class _ComAndSugScreenState extends State<ComAndSugScreen> {
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
          'Жалобы и предложения',
          style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              height: 1.3),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top: 35, left: 39, right: 39),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35))),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Создать обращение',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          height: 2.08),
                    ),
                    SvgPicture.asset(
                      'assets/icons/add.svg',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Divider(
                  color: Color(0xff707070),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  color: Color(0xfff9f9ff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/t.png',
                        width: 36,
                        height: 24,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Жалоба',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xff1c2340)),),
                              SizedBox(height: 5,),
                              Text('Не прошёл счёт на оплату',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xff8F919C)),),
                            ],),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('20.10.22',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: Color(0xff8F919C)),),
                          SizedBox(height: 26,),
                          Text('15:47',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 11,
                                color: Color(0xff8F919C)),),
                        ],),
                    ],
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

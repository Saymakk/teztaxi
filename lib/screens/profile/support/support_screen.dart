import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teztaxi/screens/profile/support/answers_screen/answers_screen.dart';
import 'package:teztaxi/screens/profile/support/com_and_sug/com_and_sug_screen.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
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
          'Служба поддержки',
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
                onTap: () => Get.defaultDialog(
                  titlePadding: EdgeInsets.only(top: 30, bottom: 5),
                  contentPadding:
                      EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  title: 'Диспетчер',
                  content: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Text('Болат Мырзахметов'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Color(0xffFFE14D), borderRadius: BorderRadius.circular(7)),
                            child: Container(
                              
                              margin: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                                child: Row(
                              children: [
                                SvgPicture.asset('assets/icons/whatsapp.svg', width: 21, height: 21,),
                                SizedBox(width: 5,),
                                Text('Написать', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11, color: Colors.black),),
                              ],
                            )),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Color(0xffFFE14D), borderRadius: BorderRadius.circular(7)),
                            child: Container(

                                margin: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/phone.svg', width: 20, height: 20,),
                                    SizedBox(width: 8,),

                                    Text('Позвонить', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11, color: Colors.black),),
                                  ],
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      color: Color(0xffF9F9FF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      margin: EdgeInsets.only(
                          left: 20, top: 20, right: 15, bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Диспетчер',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1C2340)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff100C27),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'По общим вопросам',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff8F919C)),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () => Get.defaultDialog(
                  titlePadding: EdgeInsets.only(top: 30, bottom: 5),
                  contentPadding:
                  EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  title: 'Служба безопасности',
                  content: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Text('Болат Мырзахметов'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Color(0xffFFE14D), borderRadius: BorderRadius.circular(7)),
                            child: Container(

                                margin: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/whatsapp.svg', width: 21, height: 21,),
                                    SizedBox(width: 5,),
                                    Text('Написать', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11, color: Colors.black),),
                                  ],
                                )),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Color(0xffFFE14D), borderRadius: BorderRadius.circular(7)),
                            child: Container(

                                margin: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/phone.svg', width: 20, height: 20,),
                                    SizedBox(width: 8,),

                                    Text('Позвонить', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11, color: Colors.black),),
                                  ],
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                child: Container(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Служба безопасности',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1C2340)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff100C27),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Лорем ипсум долор сет',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff8F919C)),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () => Get.defaultDialog(
                  titlePadding: EdgeInsets.only(top: 30, bottom: 5),
                  contentPadding:
                  EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  title: 'Механик',
                  content: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Text('Болат Мырзахметов'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Color(0xffFFE14D), borderRadius: BorderRadius.circular(7)),
                            child: Container(

                                margin: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/whatsapp.svg', width: 21, height: 21,),
                                    SizedBox(width: 5,),
                                    Text('Написать', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11, color: Colors.black),),
                                  ],
                                )),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Color(0xffFFE14D), borderRadius: BorderRadius.circular(7)),
                            child: Container(

                                margin: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/phone.svg', width: 20, height: 20,),
                                    SizedBox(width: 8,),

                                    Text('Позвонить', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11, color: Colors.black),),
                                  ],
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                child: Container(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Механик',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1C2340)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff100C27),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Лорем ипсум долор сет',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff8F919C)),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () => Get.defaultDialog(
                  titlePadding: EdgeInsets.only(top: 30, bottom: 5),
                  contentPadding:
                  EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  title: 'Помощь при ДТП',
                  content: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Text('Болат Мырзахметов'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(color: Color(0xffFFE14D), borderRadius: BorderRadius.circular(7)),
                            child: Container(

                                margin: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/whatsapp.svg', width: 21, height: 21,),
                                    SizedBox(width: 5,),
                                    Text('Написать', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11, color: Colors.black),),
                                  ],
                                )),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Color(0xffFFE14D), borderRadius: BorderRadius.circular(7)),
                            child: Container(

                                margin: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/phone.svg', width: 20, height: 20,),
                                    SizedBox(width: 8,),

                                    Text('Позвонить', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 11, color: Colors.black),),
                                  ],
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                child: Container(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Помощь при ДТП',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff1C2340)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff100C27),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Лорем ипсум долор сет',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff8F919C)),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: ()=>Get.to(()=>AnswersScreen(), transition: Transition.rightToLeft),
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      color: Color(0xffB7FFE1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      margin:
                          EdgeInsets.only(left: 20, top: 20, right: 15, bottom: 56),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ответы на вопросы',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff1C2340)),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff100C27),
                          ),
                        ],
                      )),
                ),
              ),

              //РАСКОММЕНТИТЬ В БУДУЩЕМ!!!

              // GestureDetector(
              //   onTap: ()=>Get.to(()=>ComAndSugScreen(), transition: Transition.rightToLeft),
              //   child: Container(
              //     margin: EdgeInsets.only(bottom: 15),
              //     decoration: BoxDecoration(
              //         color: Color(0xffB7FFE1),
              //         borderRadius: BorderRadius.circular(10)),
              //     child: Container(
              //         margin:
              //         EdgeInsets.only(left: 20, top: 20, right: 15, bottom: 56),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Text(
              //               'Жалобы и предложения',
              //               style: GoogleFonts.poppins(
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w600,
              //                   color: Color(0xff1C2340)),
              //             ),
              //             Icon(
              //               Icons.arrow_forward_ios,
              //               color: Color(0xff100C27),
              //             ),
              //           ],
              //         )),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

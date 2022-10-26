import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassScreen extends StatefulWidget {
  const ChangePassScreen({Key? key}) : super(key: key);

  @override
  State<ChangePassScreen> createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  bool old_obsc = true;
  bool new_obsc = true;
  bool new_rep_obsc = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();

      },
      child: Scaffold(
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
            'Смена пароля',
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
                Container(
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
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Старый пароль',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff1C2340)),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon:
                                         IconButton(onPressed: (){

                                           setState(() {
                                             old_obsc = !old_obsc;
                                             print(old_obsc);
                                           });
                                         }, icon:  Icon(Icons.remove_red_eye_outlined)),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15)),
                                  obscureText: old_obsc,
                                  obscuringCharacter: '*',
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Новый пароль',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff1C2340)),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon:
                                          Icon(Icons.remove_red_eye_outlined),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15)),
                                  obscureText: new_obsc,
                                  obscuringCharacter: '*',
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Введите новый пароль повторно',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff1C2340)),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      suffixIcon:
                                          Icon(Icons.remove_red_eye_outlined),
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 15)),
                                  obscureText: new_rep_obsc,
                                  obscuringCharacter: '*',
                                ),
                              ),
                            ],
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
        ),
      ),
    );
  }
}

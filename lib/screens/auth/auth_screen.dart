import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teztaxi/constants/bottom_app_bar.dart';
import 'package:teztaxi/constants/pers_bottom_app_bar.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String current_lang = 'русский';

  List<String> lang_list = <String>['русский', 'qazaq'];

  TextEditingController phoneController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9FF),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 51,
          ),
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 95,
                  height: 24,
                  child: DropdownButton<String>(
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      color: Color(0xff8A8D9F),
                      fontSize: 16,
                    )),
                    value: current_lang,
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Color(0xff8A8D9F),
                    ),
                    underline: Container(
                      height: 0,
                    ),
                    // elevation: 20,
                    // style:  TextStyle(color: Colors.deepPurple),
                    alignment: Alignment.center,
                    isExpanded: true,
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        current_lang = value!;
                      });
                    },
                    items:
                        lang_list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 76),
                  // width: 158, height: 48,
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 25),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 158,
                          height: 48,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.only(
                            top: 15, bottom: 5, left: 20, right: 15),
                        width: 314,
                        height: 54,
                        decoration: BoxDecoration(
                            color: Color(0xffF4F5F7),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: phoneController,
                          inputFormatters: [
                            TextInputMask(mask: '\\+7? (999) 999 99-99')
                          ],
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Номер телефона',
                              hintStyle: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w100),
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(bottom: 14),
                                child: Image.asset(
                                  'assets/icons/agreed.png',
                                ),
                              ),
                              suffixIconConstraints:
                                  BoxConstraints(minWidth: 24, minHeight: 24)
                              // suffixIconConstraints: BoxConstraints(maxHeight: 24, maxWidth: 24),
                              ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        padding: EdgeInsets.only(
                            top: 15, bottom: 5, left: 20, right: 15),
                        width: 314,
                        height: 54,
                        decoration: BoxDecoration(
                            color: Color(0xffF4F5F7),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          controller: passController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Пароль',
                              hintStyle: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w100),
                              ),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(bottom: 14),
                                child: Image.asset(
                                  'assets/icons/agreed.png',
                                ),
                              ),
                              suffixIconConstraints:
                                  BoxConstraints(minWidth: 24, minHeight: 24)
                              // suffixIconConstraints: BoxConstraints(maxHeight: 24, maxWidth: 24),
                              ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.offAll(
                          () => BottomNav(),
                          transition: Transition.downToUp,
                        ),
                        // onTap: () => Get.offAll(() => PNavBar()),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xffFFE14D),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            'Войти',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16)),
                          )),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                remember = !remember;
                              });
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 16,
                                  height: 16,
                                  child: Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: Color(0xff21CAC8),
                                    hoverColor: Color(0xff21CAC8),
                                    value: remember,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        remember = value!;
                                      });
                                    },
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,

                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3.0))),
                                    // Rounded Checkbox

                                    side: BorderSide(
                                        color: Color(0xff21CAC8), width: 2.14),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Запомнить меня',
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff8A8D9F))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Забыли пароль?',
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 14, color: Color(0xff21CAC8))),
                            ),
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xffF4F5F7),
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
            'Профиль',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Color(0xff100c27),
                height: 1.3),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              children: [
                Center(
                    child: CircleAvatar(
                  minRadius: 54,
                  maxRadius: 54,
                )),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffFFE14D),
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 20, top: 20, bottom: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Омар Женис Картбайулы',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Color(0xff100c27),
                              height: 1.2),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Гос. номер: 103ABK02',
                          style: GoogleFonts.poppins(
                              // fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xff4F4F4F),
                              height: 1.3),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.all(20),
                  padding: EdgeInsets.only(
                      top: 20, left: 10, right: 10, bottom: 105),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            leading: SvgPicture.asset('assets/icons/docs.svg'),
                            title: Text('Документы'),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                            minLeadingWidth: 0,
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 15,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            leading: SvgPicture.asset('assets/icons/hist.svg'),
                            title: Text('История платежей'),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                            minLeadingWidth: 0,
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 15,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            leading:
                                SvgPicture.asset('assets/icons/hist_red.svg'),
                            title: Text('История оплат по долгам'),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                            minLeadingWidth: 0,
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 15,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            leading: SvgPicture.asset('assets/icons/notif.svg'),
                            title: Text('Уведомления'),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                            minLeadingWidth: 0,
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 15,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            leading:
                                SvgPicture.asset('assets/icons/support.svg'),
                            title: Text('Служба поддержки'),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                            minLeadingWidth: 0,
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 15,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            leading:
                                SvgPicture.asset('assets/icons/settings.svg'),
                            title: Text('Настройки'),
                            trailing: Icon(Icons.arrow_forward_ios_outlined),
                            minLeadingWidth: 0,
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 15,
                          )
                        ],
                      ),
                      Container(margin: EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                            color: Color(0xff4F4F4F),
                            borderRadius: BorderRadius.circular(15.05),),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 77, vertical: 13),
                          child: Text('Выйти из аккаунта', style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),),),
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

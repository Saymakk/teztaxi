import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

import 'rent_tab/rent_calendar.dart';

class PaymentsScheduleScreen extends StatefulWidget {
  const PaymentsScheduleScreen({Key? key}) : super(key: key);

  @override
  State<PaymentsScheduleScreen> createState() => _PaymentsScheduleScreenState();
}

class _PaymentsScheduleScreenState extends State<PaymentsScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Color(0xffFFE14D),

            labelStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xff2a2a2a)),
            labelColor: Color(0xff2a2a2a),
            indicatorWeight: 4,

            // isScrollable: true,
            unselectedLabelColor: Color(0xff747474),
            labelPadding: EdgeInsets.only(bottom: 10),
            tabs: [
              Tab(
                text: 'Аренда',
              ),
              Tab(
                text: 'Задолженность',
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 59,
          shadowColor: Colors.transparent,
          elevation: 0,
          // leading: IconButton(
          //     onPressed: () => Get.back(),
          //     icon: Icon(
          //       Icons.arrow_back_ios,
          //       color: Color(0xff1C2340),
          //     )),
          centerTitle: true,
          title: Text(
            'График платежей',
            style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                height: 1.3),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              RentCalendar(),
             Container(),
            ],
          ),
        ),
      ),
    );
  }
}

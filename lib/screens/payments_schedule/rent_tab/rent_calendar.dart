import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class RentCalendar extends StatefulWidget {
  const RentCalendar({Key? key}) : super(key: key);

  @override
  State<RentCalendar> createState() => _RentCalendarState();
}

class _RentCalendarState extends State<RentCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOn; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  Widget build(BuildContext context) {
    final Color background = Color(0xffB7FFE1);
    final Color fill = Colors.white;
    final List<Color> gradient = [
      background,
      background,
      fill,
      fill,
    ];
    final double fillPercent = 38.78; // fills 56.23% for container from bottom
    final double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 1.0];

    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: TableCalendar(
// onHeaderTapped: (){},
                headerStyle: HeaderStyle(
                  titleCentered: true,
                  formatButtonVisible: true,
                  formatButtonShowsNext: false,
                ),
                calendarStyle: CalendarStyle(
                    defaultDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // border: Border.all(color: Colors.black),
                        color: Color(0xfff1f1f1)),
                    weekendDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // border: Border.all(color: Colors.black),
                        color: Color(0xfff1f1f1)),
                    todayDecoration: _selectedDay == null
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black),
                          )
                        : BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            // border: Border.all(color: Colors.black),
                            color: Color(0xfff1f1f1)),
                    // markerMargin: EdgeInsets.all(10),
                    cellMargin: EdgeInsets.all(8),
                    selectedDecoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xfff1f1f1)),
                    selectedTextStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    markerDecoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.black, width: 2)),
                    todayTextStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
                calendarFormat: CalendarFormat.week,
                startingDayOfWeek: StartingDayOfWeek.monday,
                firstDay: DateTime.utc(2020, 01, 01),
                lastDay: DateTime.utc(2040, 01, 01),

                focusedDay: DateTime.now(),

                // focusedDay: _focusedDay,
                selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                rangeStartDay: _rangeStart,
                // rangeEndDay: _rangeEnd,
                // calendarFormat: _calendarFormat,
                rangeSelectionMode: _rangeSelectionMode,
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                      _rangeStart = null; // Important to clean those
                      _rangeEnd = null;
                      _rangeSelectionMode = RangeSelectionMode.toggledOff;
                    });
                  }
                },
                // onRangeSelected: (start, end, focusedDay) {
                //   setState(() {
                //     _selectedDay = null;
                //     _focusedDay = focusedDay;
                //     _rangeStart = start;
                //     _rangeEnd = end;
                //     _rangeSelectionMode = RangeSelectionMode.toggledOn;
                //   });
                // },
                // onFormatChanged: (format) {
                //   if (_calendarFormat != format) {
                //     setState(() {
                //       _calendarFormat = format;
                //     });
                //   }
                // },
                // onPageChanged: (focusedDay) {
                //   _focusedDay = focusedDay;
                // },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  color: Color(0xffFEFAF8),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35))),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Text(
                      '18.10.22',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w300, height: 2),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 199,
                        width: double.infinity,
                        // margin: EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: gradient,
                            stops: stops,
                            end: Alignment.bottomCenter,
                            begin: Alignment.topCenter,
                          ),
                        ),
                        child: Container(
                          // margin: EdgeInsets.all(15),
                          child: Stack(
                            children: [
                              Positioned(
                                  left: 15,
                                  top: 15,
                                  child: Text(
                                    'Сумма оплаты: ',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        height: 1.92,
                                        color: Color(0xff100C27)),
                                  )),
                              Positioned(
                                  left: 15,
                                  top: 79,
                                  child: Text(
                                    'Платёж: ',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        height: 1.92,
                                        color: Color(0xff100C27)),
                                  )),
                              Positioned(
                                  left: 15,
                                  bottom: 15,
                                  child: Text(
                                    'Тип: ',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        height: 1.92,
                                        color: Color(0xff100C27)),
                                  )),
                              Positioned(
                                  top: 8,
                                  right: 98,
                                  child: Text(
                                    '15.000',
                                    style: GoogleFonts.poppins(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        height: 1.92,
                                        color: Color(0xff100C27)),
                                  )),
                              Positioned(
                                  right: 98,
                                  top: 77,
                                  child: Text(
                                    'Kaspi',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        height: 1.92,
                                        color: Color(0xff100C27)),
                                  )),
                              Positioned(
                                  left: 55,
                                  bottom: 17,
                                  child: Text(
                                    'Аренда',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        height: 1.92,
                                        color: Color(0xff100C27)),
                                  )),
                              Positioned(
                                  top: 15,
                                  right: 83,
                                  child: SvgPicture.asset(
                                      'assets/images/vertical_divider.svg')),
                              Positioned(
                                  top: 15,
                                  right: 15,
                                  child: Image.asset(
                                    'assets/icons/agreed.png',
                                    width: 30,
                                    height: 30,
                                  )),
                              Positioned(
                                  top: 88,
                                  right: 15,
                                  child: Text(
                                    '18.10.22',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.68,
                                        color: Color(0xff100C27)),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 30),
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Необходимо оплатить счёт до 16:00',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff100c27)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xff21cac8),
                          borderRadius: BorderRadius.circular(5)),
                      child: Container(
                          margin: EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'Перейти к оплате',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

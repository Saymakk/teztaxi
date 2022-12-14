import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teztaxi/screens/main_screen/main_screen.dart';
import 'package:teztaxi/screens/notifications/notifications_screen.dart';
import 'package:teztaxi/screens/payments_schedule/payments_schedule_screen.dart';
import 'package:teztaxi/screens/profile/profile_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  static const List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    PaymentsScheduleScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  final screens = [
    MainScreen(),
    PaymentsScheduleScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;

  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 9, fontWeight: FontWeight.w500);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconSize: 25,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        selectedLabelStyle:
            GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10)),
        unselectedLabelStyle:
            GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10)),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/icons/main_page_icon.png',
              ),
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/icons/main_page_icon.png'),
            ),
            label: '??????????????',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/calendar_icon.png'),
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/icons/calendar_icon.png'),
            ),
            label: '?????????????? ????????????????',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/notifications_icon.png'),
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/icons/notifications_icon.png'),
            ),
            label: '??????????????????????',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/profile_icon.png'),
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/icons/profile_icon.png'),
            ),
            label: '??????????????',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Container(
        child: IndexedStack(
          index: _selectedIndex,
          // children: [ _widgetOptions.elementAt(_selectedIndex)]),
          children: screens,
        ),
      ),
    );
  }
}

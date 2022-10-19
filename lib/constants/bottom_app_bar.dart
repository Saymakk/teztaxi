import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teztaxi/screens/main_screen/main_screen.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  static const List<Widget> _widgetOptions = <Widget>[
   MainScreen(),
   MainScreen(),
   MainScreen(),
   MainScreen(),
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
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconSize: 31,
        type: BottomNavigationBarType.fixed,

        // selectedFontSize: 0,
        selectedLabelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 9)),
        unselectedLabelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 9)),
        // unselectedItemColor: Const.icongrey,
        // selectedItemColor: Const.turq,
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/main_page_icon.png'),
              // color: Const.icongrey,
              // size: 32,
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/icons/main_page_icon.png'),
              // color: Const.turq,
              // size: 32,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/calendar_icon.png'),
              // color: Const.icongrey,
              // size: 32,
            ),
            activeIcon: ImageIcon(
              AssetImage( 'assets/icons/calendar_icon.png'),
              // color: Const.turq,
              // size: 32,
            ),
            label: 'Аренда',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/notifications_icon.png'),
              // color: Const.icongrey,
              // size: 32,
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/icons/notifications_icon.png'),
              // color: Const.turq,
              // size: 32,
            ),
            label: 'Уведомления',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/profile_icon.png'),
              // color: Const.icongrey,
              // size: 32,
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/icons/profile_icon.png'),
              // color: Const.turq,
              // size: 32,
            ),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

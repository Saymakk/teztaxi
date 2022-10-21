import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:teztaxi/screens/main_screen/main_screen.dart';

class PNavBar extends StatefulWidget {
  const PNavBar({Key? key}) : super(key: key);

  @override
  State<PNavBar> createState() => _PNavBarState();
}

class _PNavBarState extends State<PNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PersistentTabView(
        context,
        screens: screens(),
        items: navBarItems(),
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }

  List<Widget> screens() {
    return [
      MainScreen(),
      MainScreen(),
      MainScreen(),
      MainScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: ImageIcon(
          AssetImage(
            'assets/icons/main_page_icon.png',
          ),
        ),
        iconSize: 31,

        title: 'Главная',
        textStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10)),
        inactiveColorPrimary: Color(0xff8F919C),
        activeColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/calendar_icon.png'),
        ),
        title: 'Аренда',
        textStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10)),
        inactiveColorPrimary: Color(0xff8F919C),
        activeColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/notifications_icon.png'),
        ),
        title: 'Уведомления',
        textStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10)),
        inactiveColorPrimary: Color(0xff8F919C),
        activeColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(
          AssetImage('assets/icons/profile_icon.png'),
        ),
        title: 'Профиль',
        textStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 10)),
        inactiveColorPrimary: Color(0xff8F919C),
        activeColorPrimary: Colors.black,
      ),
    ];
  }
}

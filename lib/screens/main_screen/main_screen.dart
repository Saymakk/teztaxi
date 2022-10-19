import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xffFBFBFB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(child: Image.asset('assets/icons/main_page_icon.png'),),
        ),
      ),
    );
  }
}

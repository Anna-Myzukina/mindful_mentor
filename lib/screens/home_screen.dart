import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mindful_mentor/screens/dashboard_screen.dart';
import 'package:mindful_mentor/screens/journaling_stress_screen.dart';
import 'package:mindful_mentor/screens/prompt_screen.dart';
import 'package:mindful_mentor/utils/consts.dart' as consts;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      bottomNavigationBar: CircleNavBar(
        activeIndex: _tabIndex, 
        activeIcons: const [
          Icon(FontAwesomeIcons.bookOpen, color: Color(0xFF151515)),
          Icon(FontAwesomeIcons.house, color: Color(0xFF151515)),
          Icon(FontAwesomeIcons.faceSmileWink, color: Color(0xFF151515)),
        ], 
        inactiveIcons: const [
          Icon(FontAwesomeIcons.bookOpen, color: Colors.grey),
          Icon(FontAwesomeIcons.house, color: Colors.grey),
          Icon(FontAwesomeIcons.faceSmileWink, color: Colors.grey),
        ],
        height: 100, 
        circleWidth: 60, 
        color: Colors.white,
        elevation: 10,
        circleGradient: const LinearGradient(
            colors:
                [
              consts.darkBlue,
              consts.blue,
              consts.lightBlue
                  ]),
        gradient: const LinearGradient(
          colors: [
          consts.lightBlack,
          consts.mediumBlack,
          consts.black,
          consts.scaffoldBackgroundColor
        ]),
        onTap: (index) {
          setState(() => _tabIndex = index);
        },
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(38),
          topRight: Radius.circular(38),
        ),
        shadowColor: const Color.fromARGB(135, 121, 105, 111),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      const JournalingStressScreen(),
      const DashboardScreen(),
      const GeminiPromptGenerator(),
    ];
    return IndexedStack(
      index: _tabIndex,
      children: pages,
    );
  }
}

import 'package:apiero_medica/Constants/Constants.dart';
import 'package:apiero_medica/Screens/FavoriteDoctor/FavoriteDoctor.dart';
import 'package:apiero_medica/Screens/HomeScreen/HomeScreen.dart';
import 'package:apiero_medica/Screens/NotificationScreen/Notification.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicons/unicons.dart';
import '../BookAppointment/AppointmentInfo.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    AppointmentInfo(),
    NotificationScreen(),
    FavoriteDoctor(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().White,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Constants().White,
        elevation: 0,
        selectedFontSize: 13,
        unselectedFontSize: 12,
        selectedIconTheme: IconThemeData(
          color: Constants().Button,
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.grey[700],
          size: 30,
        ),
        iconSize: 30,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.home,
              size: 20,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              UniconsLine.calendar_alt,
              size: 23,
            ),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.fileWaveform,
              size: 20,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.newspaper,
              size: 20,
            ),
            label: "Articles",
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.userAlt,
              size: 20,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

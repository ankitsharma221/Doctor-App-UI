import 'package:apiero_medica/Constants/Constants.dart';
import 'package:apiero_medica/Screens/ArticlesScreen/ArticlesScreen.dart';
import 'package:apiero_medica/Screens/DoctorsScreens/DoctorHistoryScreen/DocHistoryScreen.dart';
import 'package:apiero_medica/Screens/PaitentsScrens/ProfileScreen/ProfileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicons/unicons.dart';
import '../DoctorsScreens/DoctorHomeScreen/DoctorHome.dart';
import '../PaitentsScrens/Appointment/AppointmentInfo.dart';
import '../PaitentsScrens/Appointment/AppointmentScreen.dart';
import '../PaitentsScrens/HomeScreenPaitents/HomeScreenPaitents.dart';

class BottomNavDoctors extends StatefulWidget {
  const BottomNavDoctors({super.key});
  static String id = 'BottomNav';

  @override
  State<BottomNavDoctors> createState() => _BottomNavDoctorsState();
}

class _BottomNavDoctorsState extends State<BottomNavDoctors> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreenDoctor(),
    AppointmentScreen(),
    DoctorHistoryScreen(),
    ArticlesScreen(),
    ProfileScreen(),
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
        selectedLabelStyle: TextStyle(
          color: Constants().Button,
          fontFamily: 'Urbanist',
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey[700],
          fontFamily: 'Urbanist',
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
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

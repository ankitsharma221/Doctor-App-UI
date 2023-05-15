import 'package:apiero_medica/Constants/Constants.dart';
import 'package:apiero_medica/Screens/FavoriteDoctor/FavoriteDoctor.dart';
import 'package:apiero_medica/Screens/HomeScreen/HomeScreen.dart';
import 'package:apiero_medica/Screens/NotificationScreen/Notification.dart';
import 'package:flutter/material.dart';
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
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        unselectedIconTheme: IconThemeData(color: Colors.grey[700]),
        iconSize: 30,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
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
// BottomNavigationBar(
//         // set the color of the bottom navigation bar
//         backgroundColor: Colors.white,
//         // set the type of the bottom navigation bar
//         type: BottomNavigationBarType.fixed,
//         // set the icon size of the bottom navigation bar items
//         iconSize: 30,
//         // set the selected icon color of the bottom navigation bar items
//         selectedItemColor: Colors.blue,
//         // set the unselected icon color of the bottom navigation bar items
//         unselectedItemColor: Colors.grey,
//         // set the selected label color of the bottom navigation bar items
//         selectedLabelStyle: const TextStyle(
//           fontSize: 12,
//         ),
//         // set the unselected label color of the bottom navigation bar items
//         unselectedLabelStyle: const TextStyle(
//           fontSize: 12,
//         ),
//         // set the selected icon color of the bottom navigation bar items
//         selectedIconTheme: const IconThemeData(
//           size: 30,
//         ),
//         // set the unselected icon color of the bottom navigation bar items
//         unselectedIconTheme: const IconThemeData(
//           size: 30,
//         ),
//         // set the elevation of the bottom navigation bar
//         elevation: 0,
//         // set the index of the bottom navigation bar
//         currentIndex: 0,
//         // set the onTap property of the bottom navigation bar
//         onTap: (index) {
//           // set the current index of the bottom navigation bar
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         // set the items of the bottom navigation bar
//         items: const [
//           // create a bottom navigation bar item
//           BottomNavigationBarItem(
//             // set the icon of the bottom navigation bar item
//             icon: Icon(Icons.home),
//             // set the label of the bottom navigation bar item
//             label: "Home",
//           ),
//           // create a bottom navigation bar item
//           BottomNavigationBarItem(
//             // set the icon of the bottom navigation bar item
//             icon: Icon(Icons.search),
//             // set the label of the bottom navigation bar item
//             label: "Search",
//           ),
//           // create a bottom navigation bar item
//           BottomNavigationBarItem(
//             // set the icon of the bottom navigation bar item
//             icon: Icon(Icons.favorite_border),
//             // set the label of the bottom navigation bar item
//             label: "Favorite",
//           ),
//           // create a bottom navigation bar item
//           BottomNavigationBarItem(
//             // set the icon of the bottom navigation bar item
//             icon: Icon(Icons.shopping_cart_outlined),
//             // set the label of the bottom navigation bar item
//             label: "Cart",
//           ),
//           // create a bottom navigation bar item
//           BottomNavigationBarItem(
//             // set the icon of the bottom navigation bar item
//             icon: Icon(Icons.person_outline),
//             // set the label of the bottom navigation bar item
//             label: "Profile",
//           ),
//         ],
//       ),

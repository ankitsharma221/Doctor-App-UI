import 'package:apiero_medica/Constants/Constants.dart';
import 'package:apiero_medica/Screens/ProfileScreen/OptionsScreens/EditProfile.dart';
import 'package:apiero_medica/Screens/ProfileScreen/OptionsScreens/Language.dart';
import 'package:apiero_medica/Screens/ProfileScreen/OptionsScreens/Notification.dart';
import 'package:apiero_medica/Screens/ProfileScreen/OptionsScreens/Security.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      appBar: AppBar(
        backgroundColor: Constants().Bg,
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Constants().TextColorBlack,
            fontFamily: 'Urbanist',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      heightFactor: 1.2,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          'assets/Images/doctor2.jpg',
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 110,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Constants().Button,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.camera,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    'Dr. John Doe',
                    style: TextStyle(
                      color: Constants().TextColorBlack,
                      fontFamily: 'Urbanist',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    // mobile number
                    '+91 9876543210',
                    style: TextStyle(
                      color: Constants().TextColorBlack,
                      fontFamily: 'Urbanist',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  color: Constants().Grey,
                  thickness: 0.5,
                  endIndent: 10,
                  indent: 10,
                ),
                Options(),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Options extends StatefulWidget {
  Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
// List of options
  List<String> options = [
    'Edit Profile',
    'Notification',
    'Payment',
    'Security',
    'Language',
    'Dark Mode',
    'Help & Support',
    'Logout',
  ];

  // icons for options
  List<IconData> icons = [
    FontAwesomeIcons.user,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.creditCard,
    FontAwesomeIcons.lock,
    FontAwesomeIcons.language,
    FontAwesomeIcons.moon,
    FontAwesomeIcons.questionCircle,
    FontAwesomeIcons.signOutAlt,
  ];

  // on tap of options
  void onTapOptions(int index) {
    switch (index) {
      case 0:
        // Edit Profile
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            child: Edit(),
          ),
        );
        break;
      case 1:
        // Notification
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            child: EditNotifications(),
          ),
        );
        break;
      case 2:
        // Payment
        break;
      case 3:
        // Terms & Conditions
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            child: Secure(),
          ),
        );
        break;
      case 4:
        // Language
        Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            child: language(),
          ),
        );
        break;
      case 5:
        // Logout
        break;
      case 6:
        // Logout
        break;
      case 7:
        // Logout
        break;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 8,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: icons[index] == FontAwesomeIcons.bell
              ? Badge(
                  child: FaIcon(
                    icons[index],
                    color: Constants().TextColorBlack,
                    size: 20,
                  ),
                )
              : FaIcon(
                  icons[index],
                  color: Constants().TextColorBlack,
                  size: 20,
                ),
          title: Text(
            options[index],
            style: TextStyle(
              color: Constants().TextColorBlack,
              fontFamily: 'Urbanist',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          horizontalTitleGap: 0,
          trailing: IconButton(
            onPressed: () {
              onTapOptions(index);
            },
            icon: FaIcon(
              FontAwesomeIcons.angleRight,
              color: Constants().TextColorBlack,
              size: 20,
            ),
          ),
        );
      },
    );
  }
}

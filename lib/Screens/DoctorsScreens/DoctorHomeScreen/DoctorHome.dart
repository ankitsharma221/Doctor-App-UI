import 'package:apiero_medica/Screens/PaitentsScrens/FavoriteDoctor/FavoriteDoctor.dart';
import 'package:apiero_medica/Utils/DoctorCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:apiero_medica/Constants/Constants.dart';
import '../../../Utils/Search.dart';
import '../../BottomNav/BottomNavPaitents.dart';
import '../../ChatBot/ChatBot.dart';
import '../../PaitentsScrens/HomeScreenPaitents/HomeScreenPaitents.dart';
import '../../PaitentsScrens/NotificationScreen/NotificationScreen.dart';

class HomeScreenDoctor extends StatefulWidget {
  const HomeScreenDoctor({
    Key? key,
    this.name,
    this.image,
    this.date,
    this.time,
    this.status,
    this.color,
    this.button,
    this.button2,
  }) : super(key: key);
  final String? name, date, time, status, button, button2, image;
  final Color? color;
  @override
  State<HomeScreenDoctor> createState() => _HomeScreenDoctorState();
}

class _HomeScreenDoctorState extends State<HomeScreenDoctor> {
  // Items and Icons in Categories
  List<String> categories = [
    'All',
    'Dentist',
    'Cardiologist',
    'Dermatology',
    'Ophthalmol..',
    'Neurologist',
    'Pediatrician',
    'More',
  ];

  // svg path for icons
  List<String> icons = [
    'assets/Icons/Categories/doctors.png',
    'assets/Icons/Categories/tooth.png',
    'assets/Icons/Categories/cardiology.png',
    'assets/Icons/Categories/darmatology.png',
    'assets/Icons/Categories/eye.png',
    'assets/Icons/Categories/neurology.png',
    'assets/Icons/Categories/baby.png',
    'assets/Icons/Categories/more-blue.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HelperBot(),
            ),
          );
        },
        child: Lottie.asset(
          'assets/Lottie/chat-bot.json',
          repeat: true,
          height: 100,
          width: 100,
          alignment: Alignment.center,
        ),
        backgroundColor: Constants().Button,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/Images/doctor2.jpg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning 👋',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 13,
                            color: Constants().TextColorGrey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.008,
                        ),
                        Text(
                          'Andrew Smith',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Constants().TextColorBlack,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationScreen(),
                          ),
                        );
                      },
                      icon: SvgPicture.asset(
                        'assets/Icons/notification.svg',
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  // search bar
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Constants().White,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<Search>(context, listen: false)
                          .search(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        SvgPicture.asset(
                          'assets/Icons/search.svg',
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 15,
                            color: Constants().TextColorGrey,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: CardSlider(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "Today's Appointments",
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Constants().TextColorBlack,
                    ),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                      color: Constants().TextColorBlue,
                    ),
                  ),
                ),
              ),
              ListView.builder(
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Card(
                      color: Constants().White,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/Images/doctor2.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr Andrew Smith',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: Constants().TextColorBlack,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '12:00 PM',
                                              style: TextStyle(
                                                fontFamily: 'Urbanist',
                                                color:
                                                    Constants().TextColorGrey,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor:
                                                Constants().ContainerBg2,
                                            child: FaIcon(
                                              FontAwesomeIcons.solidMessage,
                                              color: Constants().Button,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        ),
                                        GestureDetector(
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor:
                                                Constants().ContainerBg2,
                                            child: FaIcon(
                                              FontAwesomeIcons.phone,
                                              color: Constants().Button,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05,
                                        ),
                                        GestureDetector(
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor:
                                                Constants().ContainerBg2,
                                            child: FaIcon(
                                              FontAwesomeIcons.video,
                                              color: Constants().Button,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                              ],
                            ),
                            Divider(
                              color: Constants().TextColorGrey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const BottomNavPaitents(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Constants().White,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      side: BorderSide(
                                        color: Constants().Button,
                                        width: 2,
                                      ),
                                    ),
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                        color: Constants().Button,
                                        fontFamily: 'Urbanist',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const BottomNavPaitents(),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Constants().Button,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                    child: Text(
                                      'Join',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Urbanist',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppointmentCardToday extends StatefulWidget {
  const AppointmentCardToday({
    Key? key,
    this.name,
    this.image,
    this.date,
    this.time,
    this.status,
    this.color,
    this.button,
    this.button2,
  }) : super(key: key);

  final String? name, date, time, status, button, button2, image;
  final Color? color;

  @override
  State<AppointmentCardToday> createState() => _AppointmentCardTodayState();
}

class _AppointmentCardTodayState extends State<AppointmentCardToday> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Expanded(
            child: Card(
              color: Constants().White,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/Images/doctor2.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name!,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Constants().TextColorBlack,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.time!,
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: Constants().TextColorGrey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.032,
                                  width:
                                      MediaQuery.of(context).size.width * 0.22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                      color: widget.status == 'Upcoming'
                                          ? Constants().Button
                                          : widget.status == 'Completed'
                                              ? Colors.green
                                              : Colors.red,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      widget.status!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: // if status is upcoming then color is blue elseif status is completed then color is green else color is red
                                            widget.status == 'Upcoming'
                                                ? Constants().Button
                                                : widget.status == 'Completed'
                                                    ? Colors.green
                                                    : Colors.red,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Constants().ContainerBg2,
                                    child: FaIcon(
                                      FontAwesomeIcons.solidMessage,
                                      color: Constants().Button,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                GestureDetector(
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Constants().ContainerBg2,
                                    child: FaIcon(
                                      FontAwesomeIcons.phone,
                                      color: Constants().Button,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05,
                                ),
                                GestureDetector(
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Constants().ContainerBg2,
                                    child: FaIcon(
                                      FontAwesomeIcons.video,
                                      color: Constants().Button,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                      ],
                    ),
                    Divider(
                      color: Constants().TextColorGrey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.42,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomNavPaitents(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Constants().White,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              side: BorderSide(
                                color: Constants().Button,
                                width: 2,
                              ),
                            ),
                            child: Text(
                              widget.button!,
                              style: TextStyle(
                                color: Constants().Button,
                                fontFamily: 'Urbanist',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.42,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomNavPaitents(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Constants().Button,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Text(
                              widget.button2!,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Urbanist',
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

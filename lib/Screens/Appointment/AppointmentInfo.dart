import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unicons/unicons.dart';

import '../../Constants/Constants.dart';
import 'BookAppointment.dart';

class AppointmentInfo extends StatefulWidget {
  AppointmentInfo({super.key});

  @override
  State<AppointmentInfo> createState() => _AppointmentInfoState();
}

class _AppointmentInfoState extends State<AppointmentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      appBar: AppBar(
        title: Text(
          'Dr. John Doe',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Urbanist',
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/Icons/heart.svg',
              height: 30,
              width: 30,
            ),
          ),
        ],
        backgroundColor: Constants().Bg,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_backspace_sharp,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.05),
                              spreadRadius: 0.5,
                              blurRadius: 0.5,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://img.freepik.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr. John Doe',
                                    style: TextStyle(
                                      fontFamily: 'Urbanist',
                                      color: Constants().TextColorBlack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Dentist',
                                    style: TextStyle(
                                      fontFamily: 'Urbanist',
                                      color: Constants().TextColorGrey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Experience: 5 years',
                                    style: TextStyle(
                                      fontFamily: 'Urbanist',
                                      color: Constants().TextColorGrey,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Constants().ContainerBg2,
                              child: IconButton(
                                onPressed: () {},
                                icon: FaIcon(
                                  FontAwesomeIcons.users,
                                  color: Constants().Button,
                                  size: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              '5,000+',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Constants().TextColorBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              'Patients',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Constants().TextColorGrey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Constants().ContainerBg2,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  UniconsLine.calendar_alt,
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              '5 years',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Constants().TextColorBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              'Experience',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Constants().TextColorGrey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Constants().ContainerBg2,
                              child: IconButton(
                                onPressed: () {},
                                icon: FaIcon(
                                  FontAwesomeIcons.starHalfAlt,
                                  color: Constants().Button,
                                  size: 20,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Constants().TextColorBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              'Rating',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Constants().TextColorGrey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Constants().ContainerBg2,
                              child: IconButton(
                                onPressed: () {},
                                icon: FaIcon(
                                  FontAwesomeIcons.solidCommentDots,
                                  color: Constants().Button,
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              '5,000+',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Constants().TextColorBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              'Reviews',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Constants().TextColorGrey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                        ),
                        child: Text(
                          'About Doctor',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            color: Constants().TextColorBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          color: Constants().TextColorGrey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                        ),
                        child: Text(
                          'Working Hours',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            color: Constants().TextColorBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        'Mon - Fri 9:00 AM - 5:00 PM\nSat - Sun 9:00 AM - 1:00 PM',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          color: Constants().TextColorGrey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    ListTile(
                      //review section
                      title: Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                        ),
                        child: Text(
                          'Reviews',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            color: Constants().TextColorBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      trailing: Text(
                        'View All',
                        style: TextStyle(
                          fontFamily: 'Urbanist',
                          color: Constants().TextColorBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //review card
                    ReviewCard(
                      name: 'John Doe',
                      review:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      date: '5 days ago',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Constants().ContainerBg2,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookAppointment(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Constants().Button,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'Book Appointment',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// review card class for review section
class ReviewCard extends StatelessWidget {
  const ReviewCard({
    Key? key,
    required this.review,
    required this.name,
    required this.date,
  }) : super(key: key);

  final String review;
  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.width * 0.02,
            left: MediaQuery.of(context).size.width * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg',
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Constants().TextColorBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.32,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Constants().Button,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.star,
                          color: Constants().Button,
                          size: 15,
                        ),
                        Text(
                          '5',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            color: Constants().Button,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 12,
                    backgroundImage: AssetImage(
                      'assets/Icons/more.png',
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                review,
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  color: Constants().TextColorBlack,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Constants().Button,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  Text(
                    'Like',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Constants().TextColorBlack,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

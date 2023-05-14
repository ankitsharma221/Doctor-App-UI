import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';

class AppointmentInfo extends StatefulWidget {
  const AppointmentInfo({super.key});

  @override
  State<AppointmentInfo> createState() => _AppointmentInfoState();
}

class _AppointmentInfoState extends State<AppointmentInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bg,
      appBar: AppBar(
          title: const Text(
            'Dr. John Doe',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                  size: 30,
                )),
          ],
          backgroundColor: Bg,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.keyboard_backspace_sharp,
                color: Colors.black,
                size: 30,
              ))),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
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
                              offset: const Offset(
                                  0, 2), // changes position of shadow
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
                                  image: const DecorationImage(
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
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
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
                                      color: TextColorGrey,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'Experience: 5 years',
                                    style: TextStyle(
                                      color: TextColorGrey,
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
                              backgroundColor: ContainerBg2,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.people_alt_outlined,
                                  color: Button,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            const Text(
                              '5,000+',
                              style: TextStyle(
                                color: TextColorBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            const Text(
                              'Patients',
                              style: TextStyle(
                                color: TextColorGrey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: ContainerBg2,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.calendar_today_outlined,
                                  color: Button,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            const Text(
                              '5 years',
                              style: TextStyle(
                                color: TextColorBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            const Text(
                              'Experience',
                              style: TextStyle(
                                color: TextColorGrey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: ContainerBg2,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.star_half_outlined,
                                  color: Button,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            const Text(
                              '4.5',
                              style: TextStyle(
                                color: TextColorBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            const Text(
                              'Rating',
                              style: TextStyle(
                                color: TextColorGrey,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: ContainerBg2,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.chat_outlined,
                                  color: Button,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            const Text(
                              '5,000+',
                              style: TextStyle(
                                color: TextColorBlue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            const Text(
                              'Reviews',
                              style: TextStyle(
                                color: TextColorGrey,
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
                    const ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                        ),
                        child: Text(
                          'About Doctor',
                          style: TextStyle(
                            color: TextColorBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      subtitle: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: TextStyle(
                          color: TextColorGrey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    const ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(
                          bottom: 8.0,
                        ),
                        child: Text(
                          'Working Hours',
                          style: TextStyle(
                            color: TextColorBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        'Mon - Fri 9:00 AM - 5:00 PM\nSat - Sun 9:00 AM - 1:00 PM',
                        style: TextStyle(
                          color: TextColorGrey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: ContainerBg2,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Button,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Book Appointment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
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

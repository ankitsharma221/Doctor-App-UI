import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Screens/BottomNav/BottomNav.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
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
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
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
                              name!,
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
                                      date!,
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: Constants().TextColorGrey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.01,
                                    ),
                                    Text(
                                      time!,
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
                                      color: status == 'Upcoming'
                                          ? Constants().Button
                                          : status == 'Completed'
                                              ? Colors.green
                                              : Colors.red,
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      status!,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: // if status is upcoming then color is blue elseif status is completed then color is green else color is red
                                            status == 'Upcoming'
                                                ? Constants().Button
                                                : status == 'Completed'
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
                                  builder: (context) => const BottomNav(),
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
                              button!,
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
                                  builder: (context) => const BottomNav(),
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
                              button2!,
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

import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Utils/DoctorCard.dart';
import '../BottomNav/BottomNav.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Constants().Bg,
        appBar: AppBar(
          backgroundColor: Constants().White,
          elevation: 0,
          title: Text(
            'Appointment',
            style: TextStyle(
              color: Constants().TextColorBlack,
              fontFamily: 'Urbanist',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/Icons/search.svg",
                height: 30,
                width: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/Icons/more.png",
                height: 30,
                width: 30,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Constants().TextColorBlue,
            labelColor: Constants().TextColorBlue,
            unselectedLabelColor: Constants().TextColorGrey,
            automaticIndicatorColorAdjustment: true,
            indicator: UnderlineTabIndicator(
              borderRadius: BorderRadius.circular(45),
              borderSide: BorderSide(
                width: 2,
                color: Constants().TextColorBlue,
              ),
            ),
            labelStyle: const TextStyle(
              fontFamily: 'Urbanist',
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: const TextStyle(
              fontFamily: 'Urbanist',
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
            tabs: const [
              Tab(
                text: 'Upcoming',
              ),
              Tab(
                text: 'Completed',
              ),
              Tab(
                text: 'Cancelled',
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            physics: AlwaysScrollableScrollPhysics(),
            children: <Widget>[
              AppointmentCard(
                name: 'Dr. Stefeni Albert',
                date: 'Mon, 18 May',
                time: '8.00 - 9.00 AM',
                status: 'Upcoming',
                color: Constants().Button,
                button: 'Cancel',
                button2: 'Reschedule',
              ),
              AppointmentCard(
                name: 'Dr. Gaurav Dubey',
                date: 'Mon, 18 May',
                time: '8.00 - 9.00 AM',
                status: 'Completed',
                color: Constants().TextColorGrey,
                button: 'Book Again',
                button2: 'Review',
              ),
              AppointmentCard(
                name: 'Dr. Stefeni Albert',
                date: 'Mon, 18 May',
                time: '8.00 - 9.00 AM',
                status: 'Cancelled',
                color: Constants().TextColorGrey,
                button: 'Book Again',
                button2: 'Review',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

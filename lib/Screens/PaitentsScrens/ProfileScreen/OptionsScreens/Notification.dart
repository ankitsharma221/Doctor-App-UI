import 'package:flutter/material.dart';
import '../../../../Constants/Constants.dart';

class EditNotifications extends StatefulWidget {
  const EditNotifications({super.key});

  @override
  State<EditNotifications> createState() => _EditNotificationsState();
}

class _EditNotificationsState extends State<EditNotifications> {
  bool forAndroid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constants().Bg,
        title: Text(
          'Notifications',
          style: TextStyle(
            color: Constants().TextColorBlack,
            fontFamily: 'Urbanist',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Constants().TextColorBlack,
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'General Notifications',
                    style: TextStyle(
                      color: Constants().TextColorBlack,
                      fontFamily: 'Urbanist',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Switch(
                    // thumb color (round icon)
                    activeColor: Constants().Button,

                    activeTrackColor: Colors.grey.shade400,
                    inactiveThumbColor: Colors.blueGrey.shade600,
                    inactiveTrackColor: Colors.grey.shade400,
                    splashRadius: 50.0,
                    // boolean variable value
                    value: forAndroid,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => forAndroid = value),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

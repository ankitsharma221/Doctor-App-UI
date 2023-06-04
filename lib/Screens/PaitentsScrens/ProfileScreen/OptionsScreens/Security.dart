import 'package:flutter/material.dart';
import '../../../../Constants/Constants.dart';

class Secure extends StatefulWidget {
  const Secure({super.key});

  @override
  State<Secure> createState() => _SecureState();
}

class _SecureState extends State<Secure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      appBar: AppBar(
        backgroundColor: Constants().Bg,
        elevation: 0.0,
        title: Text(
          'Security',
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
                    'Change Password',
                    style: TextStyle(
                      color: Constants().TextColorBlack,
                      fontFamily: 'Urbanist',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Constants().TextColorBlack,
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    'Change Phone Number',
                    style: TextStyle(
                      color: Constants().TextColorBlack,
                      fontFamily: 'Urbanist',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Constants().TextColorBlack,
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    'Change Email',
                    style: TextStyle(
                      color: Constants().TextColorBlack,
                      fontFamily: 'Urbanist',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Constants().TextColorBlack,
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    'Change Security Question',
                    style: TextStyle(
                      color: Constants().TextColorBlack,
                      fontFamily: 'Urbanist',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Constants().TextColorBlack,
                  ),
                  onTap: () {},
                ),
              ],
            )),
      ),
    );
  }
}

import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController countryCode = TextEditingController();
  void initState() {
    countryCode.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bg,
      appBar: AppBar(
          title: Text('Login Page'),
          backgroundColor: Bg,
          elevation: 0.0,
          leading: const Icon(
            Icons.keyboard_backspace_sharp,
            color: Colors.black,
          )),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  top: 10,
                )),
                Image.asset(
                  'assets/Images/LoginScreen.png',
                  height: 230,
                  width: 230,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Lets you in!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),

                const Text(
                  'We need to register your phone before getting started!',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 40,
                          child: TextField(
                            controller: countryCode,
                            keyboardType: TextInputType.number,
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        const Text(
                          '|',
                          style: TextStyle(fontSize: 35, color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Phone",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 35,
                ),

                //button
                SizedBox(
                  width: 280,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => OtpPage()));
                    },
                    child: Text('Send Otp'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Button,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Do not have account?'),
                    Text('Sign up', style: TextStyle(color: Button))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                //image
                Image.asset(
                  'assets/Images/LoginScreen.png',
                  height: 180,
                ),
                const SizedBox(
                  height: 30,
                ),
                //text
                const Text(
                  'Phone Verification',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //text2

                SizedBox(
                  height: 20,
                ),

                //textfield

                Pinput(
                  length: 6,
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                ),

                SizedBox(
                  height: 40,
                ),

                //button
                SizedBox(
                  width: 280,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Verify Phone Number'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Button,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 130.0,
                  ),
                  child: Text(
                    'Edit Phone Number?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

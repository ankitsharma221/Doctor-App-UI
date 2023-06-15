import 'dart:js_util';

import 'package:apiero_medica/Screens/DoctorReview/rating_page.dart';
import 'package:flutter/material.dart';

class DoctorReview extends StatefulWidget {
  const DoctorReview({super.key});

  @override
  State<DoctorReview> createState() => _DoctorReviewState();
}

class _DoctorReviewState extends State<DoctorReview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFf9f9f9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 200,
                child: Image(
                  image: AssetImage(
                    'assets/Images/doct1.png',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'The consultation session has ended.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Recoding has been saved in your avtivity.',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              Divider(
                height: 50,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                  'assets/Images/Doctor.png',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Dr. Drake Boeson',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Immunologist',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'The Valley Hospital in Californial US',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                ),
              ),
              Divider(
                height: 50,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[50],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: Text(
                          'Back to home',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RatingPage()));
                    },
                    child: Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromARGB(255, 47, 58, 224),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Text(
                            'Leave a review',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

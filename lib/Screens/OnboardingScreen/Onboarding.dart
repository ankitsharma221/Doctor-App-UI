// ignore_for_file: library_private_types_in_public_api

import 'package:apiero_medica/Screens/LoginRegister/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Constants/Constants.dart';
import '../LoginRegister/LoginScreen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static String id = 'OnboardingPage';

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<Widget> _pages = [
    const OnboardingPage(
      description: 'Thousands of doctors and experts to help your health',
      animation: 'assets/Lottie/Onboard1.json',
    ),
    const OnboardingPage(
      description: 'Health Chech and consultation easily anywhere and anytime',
      animation: 'assets/Lottie/Onboard2.json',
    ),
    const OnboardingPage(
      description: 'Lets stay healthy with Apiero Medica',
      animation: 'assets/Lottie/Onboard3.json',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                itemBuilder: (BuildContext context, int index) {
                  return _pages[index];
                },
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: _pages.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Constants().Button,
                dotColor: Colors.grey,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 5,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: //if page is not last page, go to next page
                    _currentPage != _pages.length - 1
                        ? () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          }
                        : //if page is last page, go to home screen
                        () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GetStarted(),
                              ),
                            );
                          },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Constants().Button,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                child: Text(
                  _currentPage != _pages.length - 1 ? 'Next' : 'Get Started',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String description;
  final String animation;

  const OnboardingPage({
    Key? key,
    required this.description,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset(
            animation,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            description,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Constants().TextColorBlue,
            ),
          ),
        ],
      ),
    );
  }
}

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});
  static String id = 'GetStartedPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants().Bg,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Lottie.asset(
                'assets/Lottie/medical.json',
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Constants().TextColorBlue,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: //if page is not last page, go to next page
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Constants().Button,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                child: Text(
                  'Register Now',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.15),
                    ),
                  ),
                ),
                Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Constants().TextColorBlue,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.15),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: //if page is not last page, go to next page
                    () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Constants().Button,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                child: Text(
                  'Login',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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

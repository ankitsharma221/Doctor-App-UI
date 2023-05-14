// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Constants/Constants.dart';
import '../LoginScreen/LoginScreen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

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
                activeDotColor: Contstants().Button,
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
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Contstants().Button,
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
              color: Contstants().TextColorBlue,
            ),
          ),
        ],
      ),
    );
  }
}

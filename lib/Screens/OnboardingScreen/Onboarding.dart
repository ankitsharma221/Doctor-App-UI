// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<Widget> _pages = [
    OnboardingPage(
      title: 'Thousands of doctors and experts to help your health',
      image: NetworkImage(
        'https://img.freepik.com/free-photo/beautiful-young-female-doctor-looking-camera-office_1301-7807.jpg?size=626&ext=jpg&ga=GA1.2.835452490.1680197675&semt=sph',
      ),
    ),
    OnboardingPage(
      title: 'Health Chech and consultation easily anywhere and anytime',
      image: NetworkImage(
        'https://img.freepik.com/free-photo/young-female-doctor-looking-camera-office_1301-7808.jpg?size=626&ext=jpg&ga=GA1.2.835452490.1680197675&semt=sph',
      ),
    ),
    OnboardingPage(
      title: 'Lets stay healthy with Apiero Medica',
      image: NetworkImage(
        ' https://img.freepik.com/free-photo/young-female-doctor-looking-camera-office_1301-7808.jpg?size=626&ext=jpg&ga=GA1.2.835452490.1680197675&semt=sph',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bg,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
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
            Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: _pages.length,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Button,
                    dotColor: TextColorGrey,
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 5,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: //if page is not last page, go to next page
                          _currentPage != _pages.length - 1
                              ? () {
                                  _pageController.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                }
                              : //if page is last page, go to home screen
                              () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OnboardingScreen(),
                                    ),
                                  );
                                },
                      child: Text(
                        _currentPage != _pages.length - 1
                            ? 'Next'
                            : 'Get Started',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Button,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final image;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
              image: image is String ? NetworkImage(image) : image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: TextColorBlue,
            ),
          ),
        ),
      ],
    );
  }
}

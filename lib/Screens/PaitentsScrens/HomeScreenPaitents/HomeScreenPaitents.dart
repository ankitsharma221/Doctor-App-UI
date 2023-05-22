import 'package:apiero_medica/Screens/PaitentsScrens/FavoriteDoctor/FavoriteDoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:apiero_medica/Constants/Constants.dart';
import '../../../Utils/Search.dart';
import '../NotificationScreen/NotificationScreen.dart';

class HomeScreenPaitent extends StatefulWidget {
  const HomeScreenPaitent({super.key});

  @override
  State<HomeScreenPaitent> createState() => _HomeScreenPaitentState();
}

class _HomeScreenPaitentState extends State<HomeScreenPaitent> {
  // Items and Icons in Categories
  List<String> categories = [
    'All',
    'Dentist',
    'Cardiologist',
    'Dermatology',
    'Ophthalmol..',
    'Neurologist',
    'Pediatrician',
    'More',
  ];

  // svg path for icons
  List<String> icons = [
    'assets/Icons/Categories/doctors.png',
    'assets/Icons/Categories/tooth.png',
    'assets/Icons/Categories/cardiology.png',
    'assets/Icons/Categories/darmatology.png',
    'assets/Icons/Categories/eye.png',
    'assets/Icons/Categories/neurology.png',
    'assets/Icons/Categories/baby.png',
    'assets/Icons/Categories/more-blue.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Lottie.asset(
      //     'assets/Lottie/chat-bot.json',
      //     repeat: true,
      //     height: 100,
      //     width: 100,
      //     alignment: Alignment.center,
      //   ),
      //   backgroundColor: Constants().Button,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/Images/doctor2.jpg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning 👋',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 13,
                            color: Constants().TextColorGrey,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.008,
                        ),
                        Text(
                          'Andrew Smith',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Constants().TextColorBlack,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationScreen(),
                          ),
                        );
                      },
                      icon: SvgPicture.asset(
                        'assets/Icons/notification.svg',
                        height: 25,
                        width: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FavoriteDoctor(),
                          ),
                        );
                      },
                      icon: SvgPicture.asset(
                        'assets/Icons/heart.svg',
                        height: 25,
                        width: 25,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  // search bar
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Constants().White,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<Search>(context, listen: false)
                          .search(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        SvgPicture.asset(
                          'assets/Icons/search.svg',
                          height: 25,
                          width: 25,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            fontSize: 15,
                            color: Constants().TextColorGrey,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: CardSlider(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Constants().TextColorBlack,
                    ),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.bold,
                      color: Constants().TextColorBlue,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Constants().Bg,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Constants().ContainerBg2,
                              child: Image.asset(
                                icons[index],
                                height: 30,
                                width: 30,
                              ), // image
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              categories[index],
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.bold,
                                color: Constants().TextColorBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardSlider extends StatefulWidget {
  @override
  _CardSliderState createState() => _CardSliderState();
}

class _CardSliderState extends State<CardSlider> {
  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(
      () {
        setState(
          () {
            _currentPage = _pageController.page!.round();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: PageView.builder(
            itemCount: 4,
            controller: _pageController,
            itemBuilder: (BuildContext context, int pos) {
              return Card(
                shadowColor: Constants().Button,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.transparent,
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/Images/card.jpg'),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 15,
                          bottom: 30,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Medical Checks!',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Constants().TextColorWhite,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              'Check your health regularly\nto minimize the incidence of\ndisease in the future. ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Constants().TextColorWhite,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              // check now button
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                color: Constants().White,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Text(
                                  'Check Now',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Constants().TextColorBlue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.36,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/Images/Doctor.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.22,
          left: MediaQuery.of(context).size.width * 0.35,
          right: 0,
          child: SmoothPageIndicator(
            controller: _pageController,
            count: 4,
            effect: ExpandingDotsEffect(
              activeDotColor: Constants().Primary,
              dotColor: Constants().TextColorGrey,
              dotHeight: 8,
              dotWidth: 8,
              expansionFactor: 4,
              spacing: 5,
            ),
          ),
        )
      ],
    );
  }
}

import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoriteDoctor extends StatefulWidget {
  const FavoriteDoctor({super.key});

  @override
  State<FavoriteDoctor> createState() => _FavoriteDoctorState();
}

class _FavoriteDoctorState extends State<FavoriteDoctor> {
  String _favicon = "assets/Icons/heart.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Bg,
      appBar: AppBar(
        backgroundColor: Constants().Bg,
        elevation: 0,
        title: const Text(
          "Favorite Doctor",
          style: TextStyle(
            fontFamily: 'Urbanist',
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
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
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
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
                    padding: EdgeInsets.all(8),
                    child: Row(
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  child: Expanded(
                                    child: Text(
                                      'Dr. Subhramanyam Iyer',
                                      style: TextStyle(
                                        fontFamily: 'Urbanist',
                                        color: Constants().TextColorBlack,
                                        fontSize: // if the length of the text is greater than 20, then reduce the font size
                                            'Dr. Subhramanyam Iyer'.length > 20
                                                ? 16
                                                : 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                // icon button, if pressed, then change the icon to filled heart
                                GestureDetector(
                                  onTap: () {
                                    // change the icon to filled heart
                                    setState(
                                      () {
                                        _favicon == "assets/Icons/heart.svg"
                                            ? _favicon =
                                                "assets/Icons/heart-select.svg"
                                            : _favicon =
                                                "assets/Icons/heart.svg";
                                      },
                                    );
                                  },
                                  child: SvgPicture.asset(
                                    _favicon,
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              'Cardiologist | MBBS, MD',
                              style: TextStyle(
                                fontFamily: 'Urbanist',
                                color: Constants().TextColorBlack,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FaIcon(
                                  Icons.star_half_rounded,
                                  color: Constants().Button,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontFamily: 'Urbanist',
                                      color: Constants().Button,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                Text(
                                  '(2.5k)',
                                  style: TextStyle(
                                    fontFamily: 'Urbanist',
                                    color: Constants().TextColorBlack,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

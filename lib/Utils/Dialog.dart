import 'package:flutter/material.dart';

import '../Constants/Constants.dart';

class DialogBox with ChangeNotifier {
  Future dialog(
    BuildContext context,
    String image,
    String title,
    String content,
    String button,
    String button2,
    void Function() buttonPressed,
    void Function() button2Pressed,
  ) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            // curve edges of the alert dialog
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            title: Image.asset(
              image,
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            content: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${title}\n\n',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Constants().Button,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: content,
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            // two Buttons at the center of the alert dialog

            actions: [
              // ignore: deprecated_member_use
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: ElevatedButton(
                    onPressed: //if page is not last page, go to next page
                        () {
                      buttonPressed();
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
                      button,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: ElevatedButton(
                    onPressed: //if page is not last page, go to next page
                        () {
                      button2Pressed();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Constants().ContainerBg2,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    child: Text(
                      button2,
                      style: TextStyle(
                        fontSize: 18,
                        color: Constants().Button,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            ],
          );
        });
  }
}

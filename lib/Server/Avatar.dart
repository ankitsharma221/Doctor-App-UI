import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class Utils with ChangeNotifier {
  final picker = ImagePicker();
  File userAvatar = File('');
  File get getUserAvatar => userAvatar;
  String userAvatarUrl = '';
  String get getUserAvatarUrl => userAvatarUrl;

  Future pickUserAvatar(BuildContext context, ImageSource source) async {
    // ignore: deprecated_member_use
    final pickedUserAvatar = await picker.getImage(source: source);
    pickedUserAvatar == null
        ? const ScaffoldMessenger(
            child: SnackBar(content: Text('No image selected.')))
        : userAvatar = File(pickedUserAvatar.path);
    print(userAvatar.path);

    userAvatar != null
        // ignore: use_build_context_synchronously
        ? Provider.of<Utils>(context, listen: false).showUserAvatar(context)
        : const ScaffoldMessenger(
            child: SnackBar(content: Text('No image selected.')));
    notifyListeners();
  }

  Future selectUserAvatar(BuildContext context) async {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color(0xffFCCFA8),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: 10,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                'Select your avatar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Colors.red,
                    child: const Text(
                      'Gallery',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      pickUserAvatar(context, ImageSource.gallery)
                          .whenComplete(() {
                        Navigator.pop(context);
                      }).whenComplete(() {
                        Provider.of<Utils>(context, listen: false)
                            .showUserAvatar(context);
                      });
                    },
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: Colors.green,
                    child: const Text(
                      'Camera',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      pickUserAvatar(context, ImageSource.camera)
                          .whenComplete(() {
                        Navigator.pop(context);
                      }).whenComplete(() {
                        Provider.of<Utils>(context, listen: false)
                            .showUserAvatar(context);
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  showUserAvatar(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      elevation: 0,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                height: 10,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffFCCFA8),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.transparent,
                backgroundImage: FileImage(
                  Provider.of<Utils>(context, listen: false).userAvatar,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.red,
                      onPressed: () {
                        Provider.of<Utils>(context, listen: false)
                            .selectUserAvatar(context)
                            .whenComplete(() {
                          Navigator.pop(context);
                        }).whenComplete(() {
                          Provider.of<Utils>(context, listen: false)
                              .showUserAvatar(context);
                        });
                      },
                      child: const Text(
                        'Reselect',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      color: Colors.green,
                      child: const Text(
                        'Upload',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                'Note: Please wait for the image to upload',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

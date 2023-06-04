import 'package:flutter/material.dart';
import '../../../../Constants/Constants.dart';

class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  List<String> title = [
    'English',
    'Hindi',
    'Marathi',
    'Gujarati',
    'Bengali',
    'Tamil',
    'Telugu',
    'Kannada',
    'Malayalam',
    'Punjabi',
    'Odia',
    'Assamese',
    'Maithili',
    'Urdu',
    'Sanskrit',
  ];

  int currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constants().Bg,
        title: Text(
          'Language',
          style: TextStyle(
            color: Constants().TextColorBlack,
            fontFamily: 'Urbanist',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Constants().TextColorBlack),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: 15,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  title: Text(
                    title[index],
                    style: TextStyle(
                      color: Constants().TextColorBlack,
                      fontFamily: 'Urbanist',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Radio(
                    value: index,
                    groupValue: currentValue,
                    onChanged: (value) {
                      setState(() {
                        currentValue = value as int;
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

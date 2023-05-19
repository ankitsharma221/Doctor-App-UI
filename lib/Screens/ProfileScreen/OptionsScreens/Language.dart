import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../../../Constants/Constants.dart';

class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  List<String> title = [
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
    "Hindi",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constants().Bg,
        title: Text(
          'Language',
          style: TextStyle(color: Constants().TextColorBlack),
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
                  title: Text(title[index]),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.abc),
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

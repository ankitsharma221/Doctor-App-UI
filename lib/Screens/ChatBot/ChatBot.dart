import 'package:apiero_medica/Constants/Constants.dart';
import 'package:flutter/material.dart';

class HelperBot extends StatefulWidget {
  const HelperBot({super.key});

  @override
  State<HelperBot> createState() => _HelperBotState();
}

class _HelperBotState extends State<HelperBot> {
  TextEditingController _textController = TextEditingController();
  List<String> chatMessages = [];
  // logic for icons

  IconData icon = Icons.person;

  List<String> predefinedReplies = [
    'Hello',
    'How can I assist you?',
    'Thank you!',
    'Goodbye!',
  ];

  List<String> commands = [
    'Hello',
    'How are you?',
    'Thank you',
    'Goodbye',
  ];

  void _handleSubmitted(String message) {
    _textController.clear();
    setState(() {
      chatMessages.add(message);
      chatMessages.add(getReply());
    });
  }

  String getReply() {
    // if the user's message is a command, return a predefined reply
    if (commands.contains(chatMessages.last)) {
      return predefinedReplies[commands.indexOf(chatMessages.last)];
    } else {
      return 'Hello! I am Medi-Helper, your personal assistant. These are some commands you can use: \n\n1. Hello\n2. How are you?\n3. Thank you\n4. Goodbye\n\nYou can also ask me about your appointment details.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants().Button,
      appBar: AppBar(
        title: const Text(
          'Medi-Helper',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Constants().TextColorBlack,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Constants().White,
        elevation: 0,
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Constants().White,
          border: Border(
            top: BorderSide(
              color: Constants().Button,
              width: 2.0,
            ),
          ),
        ),
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: InputDecoration(
                  hintText: 'Enter a message' + '...',
                  hintStyle: TextStyle(
                    color: Constants().TextColorBlack,
                    fontFamily: 'Urbanist',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Constants().Button,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: chatMessages.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              horizontalTitleGap: 5,
              minVerticalPadding: 10,
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Constants().White,
                backgroundImage: AssetImage(
                  'assets/Images/Doctor.png',
                ),
              ),
              title: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Constants().Button,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Constants().White,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    chatMessages[index],
                    style: TextStyle(
                      color: Constants().TextColorBlack,
                      fontFamily: 'Urbanist',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
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

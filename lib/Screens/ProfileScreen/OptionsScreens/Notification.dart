import 'package:flutter/material.dart';
import '../../../Constants/Constants.dart';

class EditNotifications extends StatefulWidget {
  const EditNotifications({super.key});

  @override
  State<EditNotifications> createState() => _EditNotificationsState();
}

class _EditNotificationsState extends State<EditNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Constants().TextColorBlack,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("EditNotificationsfication"),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Tile(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {},
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
              ],
            )),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  const Tile({super.key});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  List<String> data = [
    'General EditNotificationsfication',
    "Sound",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          title: Text(data[index]),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.zoom_in)),
        );
      },
    );
  }
}

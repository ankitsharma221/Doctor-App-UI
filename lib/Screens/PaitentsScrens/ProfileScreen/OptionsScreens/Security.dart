import 'package:flutter/material.dart';
import '../../../../Constants/Constants.dart';

class Secure extends StatefulWidget {
  const Secure({super.key});

  @override
  State<Secure> createState() => _SecureState();
}

class _SecureState extends State<Secure> {
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
        title: Text("Security"),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Tile(),
                SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      // backgroundColor: Colors.blue.shade100;
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
                      'Change Pin',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      // backgroundColor: Colors.blue.shade100;
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
                      'Change Password',
                      style: const TextStyle(
                        color: Colors.blue,
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
    'Remember me',
    "Face id",
    "Biometric id",
    "Google Authenticator"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          title: Text(data[index]),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.zoom_in)),
        );
      },
    );
  }
}

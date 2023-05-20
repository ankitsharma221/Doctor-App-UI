import 'package:apiero_medica/Screens/bottomNav/BottomNav.dart';
import 'package:apiero_medica/Utils/Dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/OnboardingScreen/Onboarding.dart';
import 'Utils/Search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Search()),
        ChangeNotifierProvider(create: (context) => DialogBox()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNav(),
      ),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);

    if (seen) {
      return GetStarted.id;
    } else {
      await prefs.setBool('seen', true);
      return OnboardingScreen.id;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: checkFirstSeen(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: snapshot.data,
            routes: {
              OnboardingScreen.id: (context) => OnboardingScreen(),
              GetStarted.id: (context) => GetStarted(),
            },
          );
        }
      },
    );
  }
}

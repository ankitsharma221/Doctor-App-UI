import 'package:apiero_medica/Screens/HomeScreen/HomeScreen.dart';
import 'package:apiero_medica/Screens/bottomNav/BottomNav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/NotificationScreen/Notification.dart';
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
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

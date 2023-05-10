import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/OnboardingScreen/Onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
    );
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (_) => OnboardingScreen()),
    //   ],
    // );
  }
}

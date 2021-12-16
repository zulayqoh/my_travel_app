import 'package:flutter/material.dart';
import 'package:lets_travel/screens/onboarding/onboarding_screen.dart';

void main() => runApp(const MyTravelApp());

class MyTravelApp extends StatefulWidget {
  const MyTravelApp({Key? key}) : super(key: key);

  @override
  _MyTravelAppState createState() => _MyTravelAppState();
}

class _MyTravelAppState extends State<MyTravelApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}


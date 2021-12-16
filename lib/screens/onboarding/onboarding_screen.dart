import 'package:flutter/material.dart';
import 'package:lets_travel/configurations/size_configuration.dart';
import 'package:lets_travel/screens/onboarding/onboarding_space.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: OnboardingSpace()),
      ),
    );
  }
}

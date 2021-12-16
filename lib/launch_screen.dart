import 'package:flutter/material.dart';
import 'package:lets_travel/configurations/constants.dart';
import 'package:lets_travel/screens/onboarding/onboarding_screen.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState() {
    super.initState();
    moveToNextPage();
  }
  void moveToNextPage() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/launch_image.png'),
                fit: BoxFit.cover,
            ),
        ),
        child: Center(child: Text('The Tourist', style: TextStyle(fontFamily: 'Lobster', fontWeight: FontWeight.bold, fontSize: 50, color: titleColor),),),
      ),
    );
  }
}
//#6563D1
import 'package:flutter/material.dart';
import 'package:lets_travel/screens/custom_widgets/splace_text_button.dart';

class Splace_Screen extends StatelessWidget {
  const Splace_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/splace1.png'), fit: BoxFit.cover),
        ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                splaceTextButton('Login', 120),
               SizedBox(height: 10),
                splaceTextButton('Create Account', 70)
              ],
            ),
          ),
        ),
    );
  }
}

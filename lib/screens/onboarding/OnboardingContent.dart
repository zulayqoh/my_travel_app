import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lets_travel/configurations/constants.dart';
import 'package:lets_travel/configurations/size_configuration.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent(
      {Key? key,
     this.title,
  this.description,
       this.image})
      : super(key: key);

  final title, description, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: titleColor,
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold),
        ),
        Text(
          description,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: descriptionColor,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal),
        ),
        Container(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: getStartedColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Poppins',
                  color: HexColor('#FFFFFF'), // this is for the text color
                ),
              ),
            ),
          ),
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(365),
         width: getProportionateScreenWidth(390),
        ),
      ],
    );
  }
}

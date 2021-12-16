import 'package:flutter/material.dart';

import 'package:lets_travel/configurations/constants.dart';

TextButton splaceTextButton(String buttonTitle, double paddingWidth) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: getStartedColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
    onPressed: () {},
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingWidth),
      child: Text(
        buttonTitle,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          fontFamily: 'Poppins',
          color: Colors.white // this is for the text color
        ),
      ),
    ),
  );
}

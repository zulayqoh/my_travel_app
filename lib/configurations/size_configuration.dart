import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

// Get the proportionate height as per the screen sizes

double getProportionateScreenHeight(double inputHeight) {
double? screenHeight = SizeConfig.screenHeight;

// 812 is the layout height that the designer used

return (inputHeight/812) * screenHeight!;
}

// Get the proportionate width as per the screen sizes

double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;

// 375 is the layout height that the designer used

  return (inputWidth/375) * screenWidth!;
}
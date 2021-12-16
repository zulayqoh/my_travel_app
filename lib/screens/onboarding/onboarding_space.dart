import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lets_travel/configurations/constants.dart';
import 'package:lets_travel/configurations/size_configuration.dart';
import 'package:lets_travel/data/onboard_data.dart';

import 'OnboardingContent.dart';

class OnboardingSpace extends StatefulWidget {
  const OnboardingSpace({Key? key}) : super(key: key);

  @override
  _OnboardingSpaceState createState() => _OnboardingSpaceState();
}

class _OnboardingSpaceState extends State<OnboardingSpace> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 10),
      child: SizedBox(
       width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                flex: 10,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: onboardData.length,
                  itemBuilder: (context, index) =>OnboardingContent(
                    title: onboardData[index]["title"],
                    description: onboardData[index]["description"],
                    image: onboardData[index]["image"],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                flex: 1,
                  child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            color:
                            Color.fromRGBO(141, 141, 141, 1.0).withAlpha(50),
                            width: 2),
                      ),
                      child: Icon(Icons.arrow_back),
                    ),
                    Row(
                      children: List.generate(
                        onboardData.length,
                        (index) => buildDot(index),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: rightButtonColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: currentPage == index ? 10 : 10,
      decoration: BoxDecoration(
          color: currentPage == index ? rightButtonColor : Color(0xFFE5E5F0),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}

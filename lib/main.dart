import 'package:flutter/material.dart';

void main() => runApp(const MyTravelApp());

class MyTravelApp extends StatefulWidget {
  const MyTravelApp({Key? key}) : super(key: key);

  @override
  _MyTravelAppState createState() => _MyTravelAppState();
}

class _MyTravelAppState extends State<MyTravelApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


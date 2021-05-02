import 'package:flutter/material.dart';
import 'package:ru_hackathon/Pages/Landing/mainfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RU Hackathon',
      home: LoginPage(),
    );
  }
}

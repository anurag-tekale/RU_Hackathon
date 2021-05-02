import 'package:flutter/material.dart';
import 'package:ru_hackathon/Pages/Landing/widgets/appbar.dart';
import 'package:ru_hackathon/Pages/Landing/widgets/body.dart';
import 'package:ru_hackathon/Pages/Landing/widgets/features.dart';
import 'package:ru_hackathon/Pages/Landing/widgets/newsletter.dart';
import 'package:ru_hackathon/Pages/Landing/widgets/socials.dart';
import 'package:ru_hackathon/Pages/Landing/widgets/topfive.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7EDFE),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Appbar(),
            Body(),
            Newsletter(),
            Features(),
            Topfive(),
            Socials(),
          ],
        ),
      ),
    );
  }
}

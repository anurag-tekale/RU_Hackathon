import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ru_hackathon/Pages/HomePage/mainfile.dart';
import 'package:ru_hackathon/Pages/Landing/googleloginIn/auth.dart';
import 'package:ru_hackathon/Pages/Landing/googleloginIn/loading.dart';
import 'package:ru_hackathon/Pages/Landing/googleloginIn/mainfile.dart';
import 'package:ru_hackathon/Pages/Landing/mainfile.dart';

class AppScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    switch (authProvider.status) {
      case Status.Uninitialized:
        return Loading();
      case Status.Unauthenticated:
      case Status.Authenticating:
        return Googlelogin();
      case Status.Authenticated:
        return HomeScreen();
      default:
        return LoginPage();
    }
  }
}

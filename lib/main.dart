import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ru_hackathon/Pages/Landing/googleloginIn/auth.dart';
import 'package:ru_hackathon/Pages/Landing/googleloginIn/constants.dart';
import 'Pages/Landing/googleloginIn/app.dart';
import 'Pages/Landing/googleloginIn/appscreencontroller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AppProvider()),
        ChangeNotifierProvider.value(value: AuthProvider.init()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RU Hackathon',
        home: AppScreensController(),
      ),
    ),
  );
}

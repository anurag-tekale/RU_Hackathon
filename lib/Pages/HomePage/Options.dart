import 'package:flutter/material.dart';
import 'package:ru_hackathon/Pages/HomePage/challenges.dart';
import 'package:ru_hackathon/Pages/HomePage/community.dart';
import 'package:ru_hackathon/Pages/HomePage/dashboard.dart';
import 'package:ru_hackathon/Pages/HomePage/tutor.dart';
import 'package:ru_hackathon/Pages/JoinGroup/mainfile.dart';

class Options extends StatefulWidget {
  final int count;
  const Options({Key key, this.count}) : super(key: key);
  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  //final int count = 0;
  @override
  Widget build(BuildContext context) {
    if (widget.count == 1)
      return DashBoard();
    else if (widget.count == 2)
      return Challenges();
    else if (widget.count == 3)
      return Tutor();
    else if (widget.count == 4) return Community();
  }
}

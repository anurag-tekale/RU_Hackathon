import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Socials extends StatefulWidget {
  @override
  _SocialsState createState() => _SocialsState();
}

class _SocialsState extends State<Socials> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 700,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Text('©2021 RU_Hacks Limited'),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width - 500,
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.instagram,
              color: Colors.red,
              size: 35,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.discord,
              color: Colors.blueGrey,
              size: 35,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.linkedin,
              color: Colors.lightBlue[600],
              size: 35,
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.facebookSquare,
              color: Colors.blue[900],
              size: 35,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}

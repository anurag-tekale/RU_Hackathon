import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 75),
      child: Container(
        // height: MediaQuery.of(context).size.height - 700,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height - 700,
                ),
                Text(
                  'Easy, fee-free banking',
                  style: TextStyle(
                    color: Color(0xff121316),
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                Text(
                  'for Entrepreneurs',
                  style: TextStyle(
                    color: Color(0xff121316),
                    fontSize: 45,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 750,
                ),
                Text(
                  'Get the financial tools and insights to start, build,\nand grow your business',
                  style: TextStyle(
                    color: Color(0xff121316),
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 700,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  height: 120,
                  width: 130,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      IconButton(
                        alignment: Alignment.center,
                        icon: FaIcon(FontAwesomeIcons.users),
                        onPressed: () {},
                      ),
                      Text('           Create\n    Personal Group   ')
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1.0, 2.0),
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    height: 120,
                    width: 130,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        IconButton(
                          alignment: Alignment.center,
                          icon: FaIcon(FontAwesomeIcons.users),
                          onPressed: () {},
                        ),
                        Text('           Create\n    Personal Group   ')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  height: 120,
                  width: 130,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      IconButton(
                        alignment: Alignment.center,
                        icon: FaIcon(FontAwesomeIcons.users),
                        onPressed: () {},
                      ),
                      Text('           Create\n    Personal Group   ')
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

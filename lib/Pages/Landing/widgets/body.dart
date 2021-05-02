import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ru_hackathon/Pages/Landing/googleloginIn/mainfile.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Meet',
                    style: TextStyle(
                      color: Color(0xff121316),
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  Text(
                    'With your ',
                    style: TextStyle(
                      color: Color(0xff121316),
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  Text(
                    'Friends .',
                    style: TextStyle(
                      color: Color(0xff121316),
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 25,
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
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 170),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 45.0),
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
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 2 - 100,
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 50),
                child: Column(
                  children: [
                    Image.asset('login.png'),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 250.0),
                      child: Text(
                        'Get the financial tools and insights to start, build,\nand grow your business',
                        style: TextStyle(
                          color: Color(0xff121316),
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 500.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => Googlelogin(),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.red[200],
                          ),
                          child: Text(
                            'Join Us',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ru_hackathon/Pages/Landing/googleloginIn/mainfile.dart';

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        height: MediaQuery.of(context).size.height - 700,
        color: Colors.white,
        child: Row(
          children: [
            SizedBox(
              width: 25,
            ),
            Text(
              'RU_hack',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                wordSpacing: 1.0,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 625,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                wordSpacing: 2.0,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Text(
              'LearningRoom',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                wordSpacing: 2.0,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Text(
              'Community',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                wordSpacing: 2.0,
              ),
            ),
            SizedBox(
              width: 50,
            ),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => Googlelogin(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                elevation: 1,
                primary: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // GestureDetector(
            //   onTap: () {},
            //   child: Container(
            //     padding: EdgeInsets.fromLTRB(
            //       15,
            //       8,
            //       15,
            //       8,
            //     ),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(15),
            //       color: Color(0xfff86201),
            //     ),
            //     child: Text(
            //       'Login',
            //       style: TextStyle(
            //         fontSize: 18,
            //         color: Colors.white,
            //         fontWeight: FontWeight.w800,
            //         letterSpacing: 1,
            //       ),
            //     ),
            //   ),
            // ),
            // TextButton(
            //   style: TextButton.styleFrom(
            //     primary: Color(0xfff86201),
            //   ),
            //   onPressed: () {},
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(15),
            //       ),
            //     ),
            //     child: Text(
            //       'Login',
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontWeight: FontWeight.bold,
            //         wordSpacing: 1.0,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

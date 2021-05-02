import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height + 412,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '     Backed By Science',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '\n\n\nWe use evidence-based methods to \nhelp boost productivity, such as the \npsychology of imitation to mindfulness \npractices led by in-house experts. ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.5,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
              Image.asset('assets/login1.png')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/loginpage.png'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '     Backed By Science',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '\n\n\nWe use evidence-based methods to \nhelp boost productivity, such as the \npsychology of imitation to mindfulness \npractices led by in-house experts. ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.5,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '     Backed By Science',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 2,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '\n\n\nWe use evidence-based methods to \nhelp boost productivity, such as the \npsychology of imitation to mindfulness \npractices led by in-house experts. ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.5,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
              Image.asset('assets/login1.png')
            ],
          ),
        ],
      ),
    );
  }
}

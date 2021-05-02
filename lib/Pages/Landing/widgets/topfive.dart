import 'package:flutter/material.dart';

class Topfive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 450,
      width: MediaQuery.of(context).size.width,
      color: Colors.yellow[50],
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            'Top 5 Learners',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Anurag Tekale',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Anurag Tekale',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Anurag Tekale',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Anurag Tekale',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Anurag Tekale',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

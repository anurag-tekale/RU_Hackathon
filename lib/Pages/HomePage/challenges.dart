import 'package:flutter/material.dart';

class Challenges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 594,
      width: 944,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          TopBoard(),
          Container(
            height: 2,
            color: Color(0xff115BD4),
          ),
          Container(
            height: 2,
            color: Color(0xff050F64),
          ),
          SizedBox(
            height: 10,
          ),

          //bottom
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text('Nice u did:',
                        style: TextStyle(fontSize: 20, color: Colors.grey)),
                    Row(
                      children: <Widget>[
                        Text(
                          '80',
                          style: TextStyle(fontSize: 50),
                        ),
                        Text('min'),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 1,
                color: Colors.black,
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xff81AFFE),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffDADAF4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.timer_rounded,
                              size: 50,
                            ),
                          )),
                    ),
                    Text('Total Time'),
                    Text('80 min'),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xff81AFFE),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffDADAF4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.ac_unit,
                              size: 50,
                            ),
                          )),
                    ),
                    Text('Total Points'),
                    Text('250'),
                  ],
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Icon(Icons.arrow_back),
              SizedBox(
                width: 25,
              ),
              Container(
                child: Column(
                  children: [
                    Text('Currrent',
                        style: TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold)),
                    Text('Score',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TopBoard extends StatelessWidget {
  const TopBoard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // height: 300,
          // width: 500,
          // color: Colors.pink,
          child: Row(
            children: [
              Container(
                height: 400,
                width: 440,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://thumbs.dreamstime.com/b/young-businessman-holding-pencil-completed-checklist-clipboard-business-task-concept-goal-achievements-planning-188525949.jpg'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                child: Container(
                  child: Column(
                    children: [
                      Text('Daily',
                          style: TextStyle(
                              fontSize: 80, fontWeight: FontWeight.bold)),
                      Text('Tasks   ',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff020F67),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text(
                        'Present task',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xff81AFFE),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff115BD4)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.timer_rounded,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Time Taken',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '80 min',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xff81AFFE),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff115BD4)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.timer_rounded,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      )),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Points Earned',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                '20',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                          color: Color(0xff020F67),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Start',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

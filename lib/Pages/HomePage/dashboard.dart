import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({
    Key key,
  }) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final fromDate = DateTime(2019, 05, 22);
  final toDate = DateTime.now();

  final date1 = DateTime.now().subtract(Duration(days: 2));
  final date2 = DateTime.now().subtract(Duration(days: 3));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 594,
                width: 944,
                color: Color(0xffFBF5FF),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TopRow(),
                    TextRow(),
                    Container(
                      height: 1,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 385,
                        width: 950,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          //color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 50,
                                ),
                                ProgressBox(),
                                SizedBox(
                                  width: 50,
                                ),
                                //team option
                                TeamCol(),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            //subject
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SubjectContainer(),
                                  SubjectContainer(),
                                  SubjectContainer(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }
}

class SubjectContainer extends StatelessWidget {
  const SubjectContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffC6C3FC),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lime,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.people,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Maths project Notes",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('Of User'),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
          Center(
            child: Container(
              height: 1,
              width: 250,
              color: Colors.black,
            ),
          ),
          Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You have Completed the notes Reevise daily")),
          )
        ],
      ),
    );
  }
}

class TeamCol extends StatelessWidget {
  const TeamCol({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 90,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey[200],
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lime,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.people,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text('Team'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "10",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 90,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey[200],
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lime,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.star_outline,
                      size: 50,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text('Point'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "98",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ProgressBox extends StatelessWidget {
  const ProgressBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        // color: Colors.white,
        image: DecorationImage(
          image: NetworkImage(
              'https://vauvideo.com/assets/images/explain/80_percent_icon.png'),
          fit: BoxFit.scaleDown,
        ),
      ),
      child: Column(
        children: [
          Center(
              child: Text(
            'Task Completed',
            style: TextStyle(fontSize: 20),
          )),
        ],
      ),
    );
  }
}

class TextRow extends StatelessWidget {
  const TextRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Text(
              "Keep Going!",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
            Text(
              "Trust yourself that you can do it and get it.....",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        //search bar row
        children: [
          Container(
            width: 400,
            // color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  // icon: Icon(Icons.search),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  labelText: 'Search',
                ),
              ),
            ),
          ),
          SizedBox(
            width: 200,
          ),
          //top buttons
          Material(
            elevation: 10,
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.notifications,
                color: Color(0xff191919),
                size: 30,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Material(
            elevation: 10,
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.card_giftcard,
                color: Color(0xff191919),
                size: 30,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Material(
            elevation: 10,
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.chat_outlined,
                color: Color(0xff191919),
                size: 30,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Material(
            elevation: 10,
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                Icons.settings,
                color: Color(0xff191919),
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

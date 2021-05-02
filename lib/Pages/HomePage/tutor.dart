import 'package:flutter/material.dart';
import 'package:ru_hackathon/Pages/HomePage/tutorlist.dart';

class Tutor extends StatefulWidget {
  @override
  _TutorState createState() => _TutorState();
}

class _TutorState extends State<Tutor> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 594,
        width: 944,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 400,
                    width: 300,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Find Tutor",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff95ECFF)),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TutorInfo(
                          info: 'I am Searching For',
                        ),
                        Container(
                          height: 3,
                          width: 250,
                          color: Color(0xffA2EEBB),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TutorInfo(
                          info: 'In',
                        ),
                        Container(
                          height: 3,
                          width: 250,
                          color: Color(0xffA2EEBB),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TutorInfo(
                          info: 'Bid',
                        ),
                        Container(
                          height: 3,
                          width: 250,
                          color: Color(0xffA2EEBB),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            height: 40,
                            width: 150,
                            color: Color(0xffA2EEBB),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TutorList()),
                                  );
                                },
                                child: Center(child: Text('Search'))))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 500,
                  width: 600,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://previews.123rf.com/images/teravector/teravector1902/teravector190201089/125110276-students-sitting-at-huge-laptop-screen-and-observe-webinar-teaching-instructor-speaking-at-desktop-o.jpg"),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 5,
              width: 900,
              color: Color(0xff95ECFF),
            ),
          ],
        )
        //color: Colors.lightGreen,
        );
  }
}

class TutorInfo extends StatelessWidget {
  final String info;
  const TutorInfo({Key key, this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250,
      child: TextField(
        //obscureText: true,
        decoration: InputDecoration(
            // icon: Icon(Icons.search),
            //  prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            labelText: '$info..',
            fillColor: Colors.amber),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Newsletter extends StatefulWidget {
  @override
  _NewsletterState createState() => _NewsletterState();
}

class _NewsletterState extends State<Newsletter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 444,
      width: MediaQuery.of(context).size.width,
      color: Colors.yellow[50],
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            'Join Our NewsLetter',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Do you want to stop procrastinating? Do you want to study with\nothers? We send a weekly newsletter with study hacks, wellness\ntips, and events. It is the best way to stay in tune with StudyStream. ',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w300,
              letterSpacing: 1.5,
              color: Colors.blueGrey[200],
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 75,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red[200],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelText: "Email Address * ",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red[200],
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 25.0,
                ),
                child: ElevatedButton(
                  child: Text('Submit'),
                  onPressed: () {},
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
              ),
              // GestureDetector(
              //   onTap: () {},
              //   child: Padding(
              //     padding: const EdgeInsets.only(bottom: 25.0),
              //     child: Container(
              //       padding: EdgeInsets.fromLTRB(
              //         15,
              //         8,
              //         15,
              //         8,
              //       ),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(15),
              //         color: Color(0xfff86201),
              //       ),
              //       child: Text(
              //         'Submit',
              //         style: TextStyle(
              //           fontSize: 18,
              //           color: Colors.white,
              //           fontWeight: FontWeight.w800,
              //           letterSpacing: 1,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

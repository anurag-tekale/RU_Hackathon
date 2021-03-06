import 'package:flutter/material.dart';
import 'package:ru_hackathon/Pages/HomePage/homescreen.dart';
import 'package:ru_hackathon/Pages/JoinGroup/mainfile.dart';
import 'package:ru_hackathon/Pages/Landing/googleloginIn/backend/mainfile.dart';

class Googlelogin extends StatefulWidget {
  @override
  _GoogleloginState createState() => _GoogleloginState();
}

class _GoogleloginState extends State<Googlelogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7EDFE),
      body: Googlebody(),
    );
  }
}

class Googlebody extends StatefulWidget {
  @override
  _GooglebodyState createState() => _GooglebodyState();
}

class _GooglebodyState extends State<Googlebody> {
  bool _isProcessing = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            color: Color(0xffE7EDFE),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 450),
                  child: Text(
                    'RU_Hack',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      wordSpacing: 1.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                ),
                Text(
                  'Join to our platform',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Container(
                  height: 200,
                  width: 400,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red[200],
                            ),
                            borderRadius: BorderRadius.circular(25),
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
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Enter email i'd";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 25,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red[200],
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          labelText: "Password....",
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red[200],
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                fullscreenDialog: true,
                                builder: (context) => Joingroup(),
                              ),
                            );
                          },
                          child: Text('Join us'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 8,
                        height: 1,
                        color: Colors.grey,
                      ),
                      Text('OR'),
                      Container(
                        width: MediaQuery.of(context).size.width / 8,
                        height: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: ElevatedButton(
                    child: Text(
                      'Sign In with Google',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () async {
                      setState(() {
                        _isProcessing = true;
                      });
                      await signInWithGoogle().then(
                        (result) {
                          print(result);
                          Navigator.of(context).pop();
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => Joingroup(),
                            ),
                          );
                        },
                      ).catchError((error) {
                        print('Registration Error: $error');
                      });
                      setState(
                        () {
                          _isProcessing = false;
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      elevation: 1,
                      primary: Colors.blueGrey,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Image.asset(
              'assets/dev2.png',
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}

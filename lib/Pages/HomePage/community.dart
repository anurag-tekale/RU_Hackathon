import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 594,
      width: 944,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 30,
                        child: Text(
                          'Comments',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CommentBox(),
              SizedBox(
                height: 30,
              ),
              CommentBox(),
              SizedBox(
                height: 30,
              ),
              CommentBox(),
              SizedBox(
                height: 30,
              ),
              CommentBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class CommentBox extends StatelessWidget {
  const CommentBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 271,
      width: 900,
      decoration: BoxDecoration(
        color: Colors.purple[50],
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // 1st row
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Scarlett Barnes",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "10m ago",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 550,
                ),
                Icon(Icons.menu)
              ],
            ),

            Container(
              height: 1,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 66,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "I am glad that this idea came to someone",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      // color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'I wanted to say that I am very happy to have this site it has motivated me to work a lot."Success usually comes to those who are too busy to be looking for it.',
                    style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),

            //bottom row

            Row(
              children: <Widget>[
                IconButton(
                    iconSize: 20,
                    icon: Icon(Icons.thumb_up),
                    color: Colors.red,
                    onPressed: () {}),
                Text(
                  '1K',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                    iconSize: 20,
                    icon: Icon(Icons.comment_rounded),
                    color: Colors.black,
                    onPressed: () {}),
                Text(
                  '163',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                    iconSize: 20, icon: Icon(Icons.forward), onPressed: () {}),
                Text(
                  '51',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 550,
                ),
                IconButton(
                    iconSize: 30,
                    icon: Icon(
                      Icons.bookmark_border_outlined,
                    ),
                    onPressed: () {}),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 1,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 5,
            ),
            //comment row
            Row(
              children: <Widget>[
                Container(
                  height: 40,
                  width: 40,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 700,
                  child: TextField(
                    //obscureText: true,
                    decoration: InputDecoration(
                        // icon: Icon(Icons.search),
                        //  prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        labelText: 'Add a comment.......',
                        fillColor: Colors.amber),
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

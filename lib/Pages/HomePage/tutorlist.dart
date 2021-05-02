import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TutorList extends StatefulWidget {
  @override
  _TutorListState createState() => _TutorListState();
}

class _TutorListState extends State<TutorList> {
  Material MyItems(
      IconData icon, String heading, int color1, int color2, int color3) {
    return Material(
      color: new Color(color1),
      // shadowColor: Colors.black,

      // elevation: 16,
      //shadowColor:
      borderRadius: BorderRadius.circular(5),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  //icon button
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: NetworkImage(
                        'data:image/png;base64,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'),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star)
                    ],
                  ),
                  //text
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      heading,
                      style: TextStyle(
                        color: new Color(color3),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'List of Tutors',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 570,
              width: 944,
              color: Colors.white,
              child: SizedBox.expand(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() => _currentIndex = index);
                  },
                  children: <Widget>[
                    StaggeredGridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyItems(Icons.person, 'Tutor', 0xffccff90,
                              0xffe8f5e9, 0xff1b5e20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyItems(Icons.person, 'Tutor', 0xffccff90,
                              0xffe8f5e9, 0xff1b5e20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyItems(Icons.person, 'Tutor', 0xffccff90,
                              0xffe8f5e9, 0xff1b5e20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyItems(Icons.person, 'Tutor', 0xffccff90,
                              0xffe8f5e9, 0xff1b5e20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyItems(Icons.person, 'Tutor', 0xffccff90,
                              0xffe8f5e9, 0xff1b5e20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyItems(Icons.person, 'Tutor', 0xffccff90,
                              0xffe8f5e9, 0xff1b5e20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyItems(Icons.person, 'Tutor', 0xffccff90,
                              0xffe8f5e9, 0xff1b5e20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyItems(Icons.person, 'Tutor', 0xffccff90,
                              0xffe8f5e9, 0xff1b5e20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyItems(Icons.person, 'Tutor', 0xffccff90,
                              0xffe8f5e9, 0xff1b5e20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyItems(Icons.person, 'Tutor', 0xffccff90,
                              0xffe8f5e9, 0xff1b5e20),
                        ),
                      ],
                      staggeredTiles: [
                        StaggeredTile.extent(1, 300),
                        StaggeredTile.extent(1, 300),
                        StaggeredTile.extent(1, 300),
                        StaggeredTile.extent(1, 300),
                        StaggeredTile.extent(1, 300),
                        StaggeredTile.extent(1, 300),
                        StaggeredTile.extent(1, 300),
                        StaggeredTile.extent(1, 300),
                        StaggeredTile.extent(1, 300),
                        StaggeredTile.extent(1, 300),
                        StaggeredTile.extent(1, 300),
                      ],
                    ),
                    Container(
                      color: Colors.red[100],
                    ),
                    Container(
                      color: Colors.red[100],
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

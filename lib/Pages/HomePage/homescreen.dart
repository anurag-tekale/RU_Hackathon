import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:ru_hackathon/Pages/HomePage/Options.dart';

class HomeScreen extends StatefulWidget {

  final String title;

  const HomeScreen({Key key, this.title}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SidebarPage(),
    );
  }
}

class SidebarPage extends StatefulWidget {
  @override
  _SidebarPageState createState() => _SidebarPageState();
}

class _SidebarPageState extends State<SidebarPage> {
  List<CollapsibleItem> _items;
  String _headline;
  int count = 1;

  NetworkImage _avatarImg = NetworkImage(
      'data:image/png;base64,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');

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _headline = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      CollapsibleItem(
        text: 'Dashboard',
        icon: Icons.home_filled,
        onPressed: () {
          count = 1;
          setState(
            () => _headline = 'DashBoard',
          );
        },
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Group',
        icon: Icons.person_outlined,
        onPressed: () => setState(() => _headline = 'Errors'),
      ),
      CollapsibleItem(
        text: 'Find Tutor',
        icon: Icons.person_search_rounded,
        onPressed: () {
          count = 3;
          setState(
            () => _headline = 'DashBoard',
          );
        },
      ),
      CollapsibleItem(
        text: 'Challenge',
        icon: Icons.timer_10_outlined,
        onPressed: () {
          count = 2;
          setState(
            () => _headline = 'DashBoard',
          );
        },
      ),
      CollapsibleItem(
        text: 'Community',
        icon: Icons.people_outline,
        onPressed: () {
          count = 4;
          setState(
            () => _headline = 'DashBoard',
          );
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: CollapsibleSidebar(
        items: _items,
        avatarImg: _avatarImg,
        title: 'John Smith',
        borderRadius: 15,
        unselectedIconColor: Color(0xff191919),
        unselectedTextColor: Color(0xff191919),
        selectedIconBox: Color(0xff191919),
        selectedIconColor: Colors.white,
        body: _body(size, context),
        iconSize: 30,
        backgroundColor: Colors.blueGrey[100],
        selectedTextColor: Colors.white,
        textStyle: TextStyle(fontSize: 15),
        titleStyle: TextStyle(
            fontSize: 20,
            //fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        toggleTitleStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _body(Size size, BuildContext context) {
    return SafeArea(
      child: Center(
          child: Container(
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 250,
            ),
            Options(
              count: count,
            ),
          ],
        ),
      )),
    );
  }
}

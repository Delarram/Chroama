import 'package:flutter/material.dart';




class BottomNav extends StatefulWidget {

  final int? selectedIndex;

  const BottomNav({Key? key, this.selectedIndex=0}) : super(key: key);
  @override
  _BottomNavState createState() => _BottomNavState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BottomNavState extends State<BottomNav> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex =0;
  static List<Widget> _widgetOptions = <Widget>[

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex=widget.selectedIndex!;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      // appBar: AppBar(title: Text('home')),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.class_outlined),
            activeIcon: Icon(Icons.ac_unit_rounded),
            label: "Home",
            // title: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            activeIcon: Icon(Icons.home_rounded),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_lesson),
            activeIcon: Icon(Icons.play_lesson),
            label: 'Wishlist',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff03032b),
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        iconSize: 20,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        onTap: _onItemTapped,
      ),
    );
  }
}
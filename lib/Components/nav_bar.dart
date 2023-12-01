import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Screens/home_screen.dart';
// import 'package:university_app/Components/noti.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  _onTap(int index) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    // noti(),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        // home
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromRGBO(83, 175, 50, 1)),
        // notifications
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
          backgroundColor: Color.fromRGBO(83, 175, 50, 1),
        ),
        // settings
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color.fromRGBO(83, 175, 50, 1)),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        _onTap(_currentIndex);
      },
    );
  }
}

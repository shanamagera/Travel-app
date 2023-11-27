import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/side_bar.dart';
import 'package:nairobitravel_app/Screens/attractions_screen.dart';


class ActivitiesScreen extends StatefulWidget{
  @override
State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}
class _ActivitiesScreenState extends State<ActivitiesScreen> {
  _onPressed(int index) {
    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> noti(),));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }
  int _currentIndex= 1;
  final List<Widget> _children = [
    AttractionsScreen(),
    ActivitiesScreen(),
  ];
  @override
  Widget build(BuildContext context){
    double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          SideBar(height: height, width: width),
          Text('Hello'),
        ],
      ),
    );
}
}
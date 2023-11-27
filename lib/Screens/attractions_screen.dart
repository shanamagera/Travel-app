import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/side_bar.dart';

class AttractionsScreen extends StatefulWidget{
  @override
State<AttractionsScreen> createState() => _AttractionsScreenState();
}
class _AttractionsScreenState extends State<AttractionsScreen> {
  @override
  Widget build(BuildContext context){
    double width= MediaQuery.of(context).size.width;
    double height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          SideBar(width:width, height:height),
          Text('activities')
        ],
      ),
    );
  }
}
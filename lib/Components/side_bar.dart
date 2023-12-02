import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Screens/attractions_screen.dart';
import 'package:nairobitravel_app/Screens/activities_screen.dart';
import 'package:nairobitravel_app/Screens/restaurants_screen.dart';
import 'package:nairobitravel_app/Screens/culture_screen.dart';

class SideBar extends StatefulWidget{
  const SideBar({Key? key, 
  required this.height, 
  required this.width,
  // required this.navigator, 
  
  }):super(key: key);

  final double height;
  final double width;
  // final GlobalKey<NavigatorState>navigator;

  @override
State<SideBar> createState() => _SideBarState();
}
class _SideBarState extends State<SideBar> {
  List<Map> menu=[
    {'title': 'Attractions', 'routeName': '/attractions'},
    {'title': 'Activities', 'routeName': '/activities'},
    {'title': 'Restaurants', 'routeName': '/restaurants'},
    {'title': 'Culture', 'routeName': '/culture'},
  ];
  _onPressed(int index) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }

  int _currentIndex= 0;
  final List<Widget> _children = [
    AttractionsScreen(),
    ActivitiesScreen(),
    RestaurantsScreen(),
    CultureScreen(),
  ];

  @override
  Widget build(BuildContext context){

    return Container(
      width: widget.width * 0.2,
      color: Color.fromRGBO(83, 175, 50, 1),
      child: Column(
        children: [
          SizedBox(height: widget.height * 0.05),
          ListView.builder(
            shrinkWrap: true,
            itemCount: menu.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return RotatedBox(
                quarterTurns: 3,
                child:TextButton(
                  onPressed: () {
                  setState(() {
                  _currentIndex= index;
                });
                // widget.navigator.currentState!.pushNamed(
                //   menu[index]['routeName'],
                // );
                _onPressed(_currentIndex);
                },

              style: TextButton.styleFrom(minimumSize: const Size(100, 50)), 
              child: Text(
                menu[index]['title'],
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: (index == _currentIndex)
                  ? FontWeight.bold
                  : FontWeight.bold,
                  color: (index == _currentIndex)
                  ? Color.fromRGBO(255, 230, 5, 1)
                  : Colors.white,
                  letterSpacing: 2,
                ),
                ),
                ),
                );
            },
            ),
        ],
      ),

    );
  }
  }
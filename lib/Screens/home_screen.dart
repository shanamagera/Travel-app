import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/nav_bar.dart';
import 'package:nairobitravel_app/Screens/attractions_screen.dart';
import 'package:nairobitravel_app/Screens/activities_screen.dart';
import 'package:nairobitravel_app/Screens/restaurants_screen.dart';
import 'package:nairobitravel_app/Screens/culture_screen.dart';
import 'package:nairobitravel_app/Screens/nairobi national park_screen.dart';

class HomeScreen extends StatefulWidget{
  @override
State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  String inkwell='';
  bool isTapped=false;
  @override
  Widget build(BuildContext context){
    TextStyle linkStyle = TextStyle(color: isTapped? Color.fromRGBO(83, 175, 50, 1): Colors.black);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/home.jpg'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:200.0),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            
            child: SingleChildScrollView(
              child: Column(
              children: [
                SizedBox(height: 10),
                Text('Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                textAlign: TextAlign.start,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 1),
                    RichText(text: TextSpan(
                      text: 'Attractions',
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                      ..onTap=(){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => AttractionsScreen(),));
                        setState(() {

                  });
                      }
                    ),),
                    RichText(text: TextSpan(
                      text: 'Activities',
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                      ..onTap=(){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => ActivitiesScreen(),));
                      }
                    ),),
                    RichText(text: TextSpan(
                      text: 'Restaurants',
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                      ..onTap=(){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => RestaurantsScreen(),));
                      }
                    ),),
                    RichText(text: TextSpan(
                      text: 'Culture',
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                      ..onTap=(){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => CultureScreen(),));
                      }
                    ),),
                    SizedBox(width: 1),
                  ],
                ),
                SizedBox(height: 20),
                Text('Recommended',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                ),

                SizedBox(height: 20),

                SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder:(context) => NairobiNationalParkScreen(),));
                              print('printed');
                              },
                              child: Stack(
                                children: [
                                  Container(
                                  width:400,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/nairobi-national-park.jpg'), fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 200),
                                      child: Row(
                                        children: [
                                          Text('Nairobi National Park',
                                          style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                                          ),
                                                 ),
                                           SizedBox(width: 60),
                                           Row(
                                            children: List.generate(5, (index){
                                              return Icon(Icons.star,
                                              color: Color.fromRGBO(255, 230, 5, 1),
                                                                    );
                                                              }
                                                           ),
                                                       ),
                                              ],
                                            ),
                                    ),
                                      ],
                                  ),
                                  ),
                      SizedBox(height: 10),
                      GestureDetector(
                            onTap: () {
                              print('printed');
                              },
                              child: Stack(
                                children:[
                                  Container(
                                  width:400,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/nairobi national museum.png'), fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:200),
                                      child: Row(
                                        children: [
                                          // SizedBox(height: 400),
                                          Text('Nairobi National Museum',
                                          style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                                          ),
                                                 ),
                                           SizedBox(width: 50),
                                           Row(
                                            children: List.generate(5, (index){
                                              return Icon(Icons.star,
                                              color: Color.fromRGBO(255, 230, 5, 1),
                                                                    );
                                                              }
                                                           ),
                                                       ),
                                              ],
                                            ),
                                    ),
                                ],
                              ),
                                  ),
                      SizedBox(height: 10),
                      GestureDetector(
                            onTap: () {
                              print('printed');
                              },
                              child: Stack(
                                children: [
                                  Container(
                                  width:400,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/images/maasai-market.jpg'), fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:200),
                                      child: Row(
                                        children: [
                                          // SizedBox(height: 400),
                                          Text('Nairobi National Museum',
                                          style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                                          ),
                                                 ),
                                           SizedBox(width: 50),
                                           Row(
                                            children: List.generate(5, (index){
                                              return Icon(Icons.star,
                                              color: Color.fromRGBO(255, 230, 5, 1),
                                                                    );
                                                              }
                                                           ),
                                                       ),
                                              ],
                                            ),
                                    ),
                                ]
                              ),
                                  ),
                            ],
                            ),
                            ),
                    ],
              ),
                  ),
                ),
          
                ),
            
        
                      ],
              ),



      bottomNavigationBar: NavBar(),
    );
  }

}

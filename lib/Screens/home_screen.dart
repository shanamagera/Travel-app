import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/nav_bar.dart';
import 'package:nairobitravel_app/Screens/attractions_screen.dart';

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
            child: Column(
              children: [
                Text('Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                textAlign: TextAlign.start,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(text: TextSpan(
                      text: 'Attractions',
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                      ..onTap=(){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => AttractionsScreen(),));
                        setState(() {

                  });
                      }
                    ),),
                    RichText(text: TextSpan(
                      text: 'Activities',
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                      ..onTap=(){}
                    ),),
                    RichText(text: TextSpan(
                      text: 'Restaurants',
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                      ..onTap=(){}
                    ),),
                    RichText(text: TextSpan(
                      text: 'Culture',
                      style: linkStyle,
                      recognizer: TapGestureRecognizer()
                      ..onTap=(){}
                    ),),
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
                      InkWell(
                        child: Container(
                          width: 480,
                          height: 250,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/nairobi-national-park.jpg')),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                              ),
                              ),
                              ),
                              onTap: () {},
                              ),

                      SizedBox(height: 10),
                      InkWell(
                        child: Container(
                        width: 480,
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/images/nairobi national museum.png')),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)
                            ),
                            ),
                            ),
                            onTap: () {},
                              ),

                      // InkWell(
                      //    child: Container(
                      //     width: 480,
                      //     height: 250,
                      //     decoration: BoxDecoration(
                      //     image: DecorationImage(image: AssetImage('assets/images/nairobi national museum.png')),
                      //     borderRadius: BorderRadius.only(
                      //       bottomLeft: Radius.circular(40),
                      //       bottomRight: Radius.circular(40),
                      //       topLeft: Radius.circular(40),
                      //       topRight: Radius.circular(40)
                      //       ),
                      //       ),
                      //       ),
                      //       onTap: () {},
                      //       ),
                            ],
                            ),
                            ),
                    ],
                  ),
                ),
          
                ),
            
        
                      ],
              ),



      bottomNavigationBar: NavBar(),
    );
  }

}

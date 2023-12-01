import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Screens/login_screen.dart';
import 'package:nairobitravel_app/Screens/Register_screen.dart';

class LandingpageScreen extends StatefulWidget{
  @override
  State<LandingpageScreen> createState() => _LandingpageScreenState();
}

class _LandingpageScreenState extends State<LandingpageScreen> {
  bool isPressed=false;
  bool isTapped=false;
  Widget build(BuildContext context){
  
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(image: AssetImage('assets/images/landingpage.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text('Welcome to Nairobi!',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromRGBO(83, 175, 50, 1)),
          ),
          SizedBox(height: 10),
          Text('The city under the sun',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(height: 15),
          Text('Did you know that Nairobi is the only capital city in the world with a national park? Well, Nairobi has much more to offer. Explore your journey only with us.',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            letterSpacing: 1.2,
          ),
          ),
          SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isPressed? Colors.black : Colors.white,
                  foregroundColor: isPressed? Color.fromRGBO(255, 230, 5, 1) : Colors.black,
                  fixedSize: Size(300, 40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                ),
                child: Text('Sign in'),
                onPressed: () {
                  setState(() {
                    isPressed= !isPressed;
                  });
                  if(!isPressed){
                    isPressed=true;
                  }
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => LoginScreen(),));
                    // print('Home');
                }, 
                ),
          SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isTapped? Colors.black : Colors.white,
                  foregroundColor: isTapped? Color.fromRGBO(255, 230, 5, 1) : Colors.black,
                  fixedSize: Size(300, 40),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
                ),
                child: Text('Sign up'),
                onPressed: () {
                  setState(() {
                    isTapped= !isTapped;
                  });
                  if(!isTapped){
                    isTapped=true;
                    }
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => RegisterScreen(),));
                    // print('Home');
                }, 
                ),
        ],
      ),

    );

  }

}
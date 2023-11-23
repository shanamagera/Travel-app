import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:nairobitravel_app/Screens/landingpage_screen.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context){

    // Future.delayed(Duration(seconds: 5), () {
    //   // Navigator.of(context).push(MaterialPageRoute(builder:(context) => LoginScreen(),));

    // });
    return AnimatedSplashScreen(
      splash: Column(
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Image.asset('assets/images/Nairobi Splash.png'),
          ],
      ),
      backgroundColor: Color.fromRGBO(67, 67, 35, 1),
      nextScreen: LandingpageScreen(),
      splashTransition: SplashTransition.scaleTransition,
      splashIconSize: 250,
      duration: 4000,

      );
  }
}
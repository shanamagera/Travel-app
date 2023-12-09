import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nairobitravel_app/Screens/home_screen.dart';

class SuccessBooked extends StatelessWidget{
  const SuccessBooked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Lottie.asset('assets/images/Animation.json'),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text('Successfully Booked!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(83, 175, 50, 1)
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) => HomeScreen(),));
                  }, 
                  child: Text('Back to Home Page'),
                  ),
              ),
          ],
        )
        ),
    );
  }
}
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Screens/login_screen.dart';
import 'package:http/http.dart' as http;
import 'package:nairobitravel_app/Services/auth_services.dart';
import 'package:nairobitravel_app/Services/globals.dart';



class RegisterScreen extends StatefulWidget{
  

  // bool? isChecked=false;
  @override
   State<RegisterScreen> createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  String _name = '';
  String _email = '';
  String _password = '';
  bool showPass = false;
  showPassword(){
    setState(() {
      showPass= !showPass;
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage('assets/images/tourist-couple.jpg')),
                ),
              ),
              SizedBox(height: 10),
              Text('Create an account',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              SizedBox(width: 300, height: 70,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder()
                ),
                onChanged: (value) {
                  _name= value;
                },
              ),
              ), 
              SizedBox(width: 300, height: 70,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  _email=value;
                },
              ),
              ),
              SizedBox(width: 300, height: 70,
              child: TextField(
                onTap: showPassword,
                obscureText: showPass ? false: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder()
                ),
                onChanged: (value) {
                  _password=value;
                },
              ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 40),
                  primary: Color.fromARGB(255, 10, 185, 121)
                ),
                onPressed: () async {
                  bool emailValid=RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                  .hasMatch(_email);
                  if (emailValid){
                    http.Response response=
                    await AuthServices.register(_name, _email, _password);
                    Map responseMap=jsonDecode(response.body);
                    if(response.statusCode==200){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => LoginScreen(),));
                    } else{
                      errorSnackBar(context, responseMap.values.first[0]);
                    }
                  } else{
                    errorSnackBar(context, 'email not valid');
                  }
                }, 
                child: Text('Register'),
                ),
            ],
          ),
        ),
      ),
   
    );
  }

}
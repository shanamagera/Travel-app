import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';
import 'package:nairobitravel_app/Screens/Register_screen.dart';
import 'package:nairobitravel_app/Screens/home_screen.dart';
import 'package:http/http.dart' as http;
import 'package:nairobitravel_app/Services/globals.dart';
import 'package:nairobitravel_app/Services/auth_services.dart';
import 'dart:convert';


class LoginScreen extends StatefulWidget{
  // bool isObscure=true;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
String _email= '';
String _password='';
  bool showPass = false;
  showPassword(){
    setState(() {
      showPass= !showPass;
    });
  }
  bool checkTheBox= false;
  check(){
    setState(() {
      checkTheBox= !checkTheBox;
    });
  }

  showSnackBar(BuildContext context, String text){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Color.fromARGB(255, 10, 185, 121),
      content: Text(text),
      duration: const Duration(seconds: 4),
      )
  );
}

  Widget build(BuildContext context){
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
    TextStyle linkStyle = TextStyle(color: Color.fromARGB(255, 10, 185, 121));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage('assets/images/login tourist.jpg',)),
                ),
              ),
              SizedBox(height:20),
              Text('Hello',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text('Sign in to continue',
              style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(height: 20),
              SizedBox(width: 300, height: 70,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.people),
                  hintText: "Email or Username",
                  border:OutlineInputBorder()
                ),
                onChanged: (value) {
                  _email=value;
                },
              ),
              ),
              SizedBox(
                width: 300, 
                height: 70,
                child: TextField(
                onTap: showPassword,
                obscureText: showPass ? false: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  _password=value;
                },
              ),
              ), 
              // SizedBox(height: 12),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 480),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Theme(data: ThemeData(
                          unselectedWidgetColor: Colors.grey,
                        ), 
                        child: Checkbox(
                          checkColor: Colors.white,
                          value: checkTheBox ? true : false, 
                          onChanged: (value) {
                            check();
                          },
                          ),
                        ),
                        Text('Remember Me', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    RichText(text: TextSpan(
                      style: linkStyle, 
                      text: 'Forgot Password?',
                      recognizer: TapGestureRecognizer()
                      ..onTap=(){}
                    ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 10, 185, 121),
                  fixedSize: Size(300, 40),
                ),
                onPressed: () async{
                  if(_email.isNotEmpty && _password.isNotEmpty){
                     http.Response response=
                     await AuthServices.login(_email, _password);
                     Map responseMap=jsonDecode(response.body);
                      if(response.statusCode == 200) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context) => HomeScreen(),));
                  showSnackBar(context, 'Successfully Login!Welcome Back');
                  } else {
                    errorSnackBar(context, responseMap.values.first);
                  }
                  } else {
                    errorSnackBar(context, 'enter all required fields');
                  }
                },
                child: Text('Login'),
                ),
                SizedBox(height: 20),
          
          RichText(text: TextSpan(
            style: defaultStyle,
            children: <TextSpan> [
              TextSpan(
                text: 'Do not have an account?'),
                TextSpan(
                  text: 'Register',
                  style: linkStyle,
                  recognizer: TapGestureRecognizer()
                  ..onTap=(){
                    Navigator.of(context).push(MaterialPageRoute(builder:(context) => RegisterScreen(),));
                    print('Register');
                  }

                ),

            ]
            
            
            
            ), 
        
            ),
            ],
          ),
        ),
      );
   
  }
}
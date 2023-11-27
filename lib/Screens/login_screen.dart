import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/semantics.dart';
import 'package:nairobitravel_app/Screens/Register_screen.dart';
import 'package:nairobitravel_app/Screens/home_screen.dart';


class LoginScreen extends StatefulWidget{
  // bool isObscure=true;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

  Widget build(BuildContext context){
    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 15.0);
    TextStyle linkStyle = TextStyle(color: Color.fromARGB(255, 10, 185, 121));
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   toolbarHeight: 50,
      //   backgroundColor: Color.fromRGBO(10, 185, 121, 1),
      //   elevation: 0,
      // ),
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
              ),
              ),
              SizedBox(width: 300, height: 70,
              child: TextField(
                onTap: showPassword,
                obscureText: showPass ? false: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(),
                ),
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
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => HomeScreen(),));
                  //   // print('Home');
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
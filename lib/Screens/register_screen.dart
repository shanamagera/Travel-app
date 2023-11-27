import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Screens/login_screen.dart';
// import 'package:flutter/semantics.dart';


class RegisterScreen extends StatefulWidget{
  

  // bool? isChecked=false;
  @override
   State<RegisterScreen> createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  // List<User> users=[];
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
                  hintText: "First name",
                  border: OutlineInputBorder()
                ),
              ),
              ),
              SizedBox(width: 300, height: 70,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Last name",
                  border: OutlineInputBorder()
                ),
              ),
              ), 
              SizedBox(width: 300, height: 70,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder()
                ),
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
              ),
              ),
              SizedBox(width: 300, height: 100,
              child: TextField(
                onTap: showPassword,
                obscureText: showPass ? false: true,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder()
                ),
              ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 40),
                  primary: Color.fromARGB(255, 10, 185, 121)
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => LoginScreen(),));
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
import 'package:flutter/material.dart';
// import  'package:university_app/Components/models/User.dart';
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle_rounded
              ),
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
              

            
              
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 40),
                  primary: Color.fromARGB(255, 10, 185, 121)
                ),
                onPressed: () {}, 
                child: Text('Register'),
                ),
            ],
          ),
        ),
      ),
   
    );
  }

}
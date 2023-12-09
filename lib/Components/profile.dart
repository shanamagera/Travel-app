import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Screens/home_screen.dart';
import 'package:nairobitravel_app/Components/settings.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:js_interop';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
  // Future<void> addDataToFirestore(email, password)async{
  //   CollectionReference collectionReference= FirebaseFirestore.instance.collection('Login');
  //   LoginReference.add({'email':email, 'password':password});
  // }
}

class _ProfileState extends State<Profile> {
  final TextEditingController nameController= TextEditingController();
  final TextEditingController emailController= TextEditingController();
  final TextEditingController passwordController= TextEditingController();
  bool showPass = false;
  showPassword(){
    setState(() {
      showPass= !showPass;
    });
  }
   _onTap(int index) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }
  int _currentIndex = 2;
  final List<Widget> _children = [
    HomeScreen(),
    settings(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, 
        icon: Icon(Icons.arrow_back, color: Color.fromRGBO(83, 175, 50, 1),)
        ),
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text('Edit Profile',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 15),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.webp.jpg'), fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        color: Color.fromRGBO(83, 175, 50, 1),
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 35),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 3),
                labelText: 'Full Name',         
              ),
            ),
            SizedBox(height: 40),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 3),
                labelText: 'Email',         
              ),
            ),
            SizedBox(height: 40),
            TextFormField(
              onTap: showPassword,
              obscureText: showPass ? false: true,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      showPass= !showPass;
                    });
                  },
                 icon: Icon(
                  Icons. remove_red_eye,
                  color: Colors.grey,
                  ),
                 ),
                contentPadding: EdgeInsets.only(bottom: 3),
                labelText: 'Password',         
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(20),
                        )),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(
                        horizontal: 50,
                        )),
                  ),
                  onPressed: (){}, 
                  child: Text('CANCEL',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  ),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(83, 175, 50, 1),
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    ),
                    child: Text('SAVE',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    ),
                    ),
              ],
            ),
          ],
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromRGBO(83, 175, 50, 1)),
        // notifications
          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Color.fromRGBO(83, 175, 50, 1),
        ),
        // settings
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromRGBO(83, 175, 50, 1)),
               ],
               onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  });
                  _onTap(_currentIndex);
                  },
                  ),
      
    );
  }
}
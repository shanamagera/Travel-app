import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/profile.dart';
import 'package:nairobitravel_app/Screens/home_screen.dart';
import 'package:nairobitravel_app/Screens/login_screen.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
   _onTap(int index) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }
  int _currentIndex = 1;
  final List<Widget> _children = [
    HomeScreen(),
    const settings(),
    Profile(),
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
        child:ListView(
          children: [
            Text('Settings',
            style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          ),
            SizedBox(height: 40),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color.fromRGBO(83, 175, 50, 1),
                  ),
                  SizedBox(width: 8),
                  Text('Account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ],
            ),
            Divider(
              height: 15, 
            thickness: 2
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Change Password',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Content Settings',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Social',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Language',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Privacy and Security',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Icon(
                  Icons.volume_up_outlined,
                  color: Color.fromRGBO(83, 175, 50, 1),
                  ),
                  SizedBox(width: 8),
                  Text('Notifications',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              ],
            ),
            Divider(
              height: 15, 
            thickness: 2
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('News for you',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 18,
                ),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: true, 
                    onChanged: (bool val){},
                    ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Account Activity',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 18,
                ),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: true, 
                    onChanged: (bool val){},
                    ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Opportunity',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 18,
                ),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: false, 
                    onChanged: (bool val){},
                    ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Center(
              child: OutlinedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => LoginScreen(),));
                }, 
                child: Text(
                  'SIGN OUT',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 2.2,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                ),
                ),
                ),
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
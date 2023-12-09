import 'package:flutter/material.dart';
import 'package:nairobitravel_app/Components/side_bar.dart';
import 'package:nairobitravel_app/Screens/activities_screen.dart';
import 'package:nairobitravel_app/Screens/login_screen.dart';
import 'package:nairobitravel_app/Screens/splash_screen.dart';
import 'package:nairobitravel_app/Screens/home_screen.dart';
import 'package:nairobitravel_app/Screens/attractions_screen.dart';
import 'package:nairobitravel_app/Components/profile.dart';
import 'package:nairobitravel_app/Components/booking_page.dart';


import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:js_interop';


void main() async{


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  


addDataToFirestore();
  runApp(const MyApp());
}
Future<void> addDataToFirestore() async{
CollectionReference profileReference= FirebaseFirestore.instance.collection('profile');
profileReference.add({'name': 'John Doe','email':"email@gmail.com",'password':12345});

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nairobi Travel',
      home: SplashScreen(),
      // initialRoute: '/attractions',
      // routes: {
      //   AttractionsScreen.routeName:(context) => AttractionsScreen(),
      //   ActivitiesScreen.routeName:(context) => const ActivitiesScreen(),
      // },


      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 10, 185, 121)),
        
      ),
      // builder: (context, child){
      //   return _TravelApp(
      //     navigator: (child!.key as GlobalKey<NavigatorState>),
      //     child: child,
      //     );
      // },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


// class _TravelApp extends StatefulWidget{
//   const _TravelApp({
//     Key? key,
//     required this.navigator,
//     required this.child
//   }) : super(key: key);

//   final GlobalKey<NavigatorState> navigator;
//   final Widget child;

//   @override
//   State<_TravelApp> createState ()=> _TravelAppState();
// }

// class _TravelAppState extends State<_TravelApp> {
//   @override
//   Widget build(BuildContext context){
//     double width= MediaQuery.of(context).size.width;
//     double height= MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Row(
//         children: [
//           SideBar(height: height, width: width, navigator: widget.navigator),
//         Expanded(child: widget.child),
//       ]
//       ),
//     );
//   }
// }


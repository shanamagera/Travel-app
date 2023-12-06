// // File generated by FlutterFire CLI.
// // ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
// import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;

// /// Default [FirebaseOptions] for use with your Firebase apps.
// ///
// /// Example:
// /// ```dart
// /// import 'firebase_options.dart';
// /// // ...
// /// await Firebase.initializeApp(
// ///   options: DefaultFirebaseOptions.currentPlatform,
// /// );
// /// ```
// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       return web;
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for android - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.iOS:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for ios - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.macOS:
//         return macos;
//       case TargetPlatform.windows:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for windows - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for linux - '
//           'you can reconfigure this by running the FlutterFire CLI again.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }

//   static const FirebaseOptions web = FirebaseOptions(
//     apiKey: 'AIzaSyD9RR1ouEMjKrGOLkor0rEAkGMfGDmDnSE',
//     appId: '1:409819813658:web:072436bea83a52437dbea3',
//     messagingSenderId: '409819813658',
//     projectId: 'travel-app-ce83a',
//     authDomain: 'travel-app-ce83a.firebaseapp.com',
//     storageBucket: 'travel-app-ce83a.appspot.com',
//   );

//   static const FirebaseOptions macos = FirebaseOptions(
//     apiKey: 'AIzaSyAZLUKl3vt2iFvCmw33OQX4Hs0-XxzUoLg',
//     appId: '1:409819813658:ios:34070e218cfee1fe7dbea3',
//     messagingSenderId: '409819813658',
//     projectId: 'travel-app-ce83a',
//     storageBucket: 'travel-app-ce83a.appspot.com',
//     iosBundleId: 'com.example.nairobitravelApp.RunnerTests',
//   );
// }

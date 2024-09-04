// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCy7DtNhqFTQYsatF2xDohmo2GyOYp-ANU',
    appId: '1:488200646078:web:6e5d2df7178b2242f69def',
    messagingSenderId: '488200646078',
    projectId: 'cars-hub-1382c',
    authDomain: 'cars-hub-1382c.firebaseapp.com',
    storageBucket: 'cars-hub-1382c.appspot.com',
    measurementId: 'G-6BS8V5J9YY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsaJg0thGOg1R6HO-baN-b5dnZ-s_Ia_o',
    appId: '1:488200646078:android:dea005e0af677688f69def',
    messagingSenderId: '488200646078',
    projectId: 'cars-hub-1382c',
    storageBucket: 'cars-hub-1382c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBj5KcQt1b3-zbBETgDFZPQ2-BJHE7l7-I',
    appId: '1:488200646078:ios:3db6bc309767e5eef69def',
    messagingSenderId: '488200646078',
    projectId: 'cars-hub-1382c',
    storageBucket: 'cars-hub-1382c.appspot.com',
    iosBundleId: 'com.example.carsHub',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBj5KcQt1b3-zbBETgDFZPQ2-BJHE7l7-I',
    appId: '1:488200646078:ios:3db6bc309767e5eef69def',
    messagingSenderId: '488200646078',
    projectId: 'cars-hub-1382c',
    storageBucket: 'cars-hub-1382c.appspot.com',
    iosBundleId: 'com.example.carsHub',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCy7DtNhqFTQYsatF2xDohmo2GyOYp-ANU',
    appId: '1:488200646078:web:8552be917407f69df69def',
    messagingSenderId: '488200646078',
    projectId: 'cars-hub-1382c',
    authDomain: 'cars-hub-1382c.firebaseapp.com',
    storageBucket: 'cars-hub-1382c.appspot.com',
    measurementId: 'G-7P4BBVS9KX',
  );
}

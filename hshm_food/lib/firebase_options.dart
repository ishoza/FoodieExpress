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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBsoIV3jtf6pvma1lzca_AP7qLnhTE7vvc',
    appId: '1:394889878051:web:11fef3f75a2765c654af96',
    messagingSenderId: '394889878051',
    projectId: 'hshmfood',
    authDomain: 'hshmfood.firebaseapp.com',
    storageBucket: 'hshmfood.firebasestorage.app',
    measurementId: 'G-83QD2ERL5K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKA0pWeMxlABYGlj3IFU6z9QdyBXp3EvE',
    appId: '1:394889878051:android:ac7031f986535f7154af96',
    messagingSenderId: '394889878051',
    projectId: 'hshmfood',
    storageBucket: 'hshmfood.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBsoIV3jtf6pvma1lzca_AP7qLnhTE7vvc',
    appId: '1:394889878051:web:0df05b539540f04854af96',
    messagingSenderId: '394889878051',
    projectId: 'hshmfood',
    authDomain: 'hshmfood.firebaseapp.com',
    storageBucket: 'hshmfood.firebasestorage.app',
    measurementId: 'G-DQ1V4QY3K3',
  );
}
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
    apiKey: 'AIzaSyCYTo2-XvswfeFA30sYTfZZVpu26tG2Py0',
    appId: '1:129754296273:web:0f0ed895ff478160137af0',
    messagingSenderId: '129754296273',
    projectId: 'ali-portfolio-8d582',
    authDomain: 'ali-portfolio-8d582.firebaseapp.com',
    storageBucket: 'ali-portfolio-8d582.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAbh8MAg90pkX0aUEpd0U4NyupdZL5Im08',
    appId: '1:129754296273:android:8ff604be76858ea9137af0',
    messagingSenderId: '129754296273',
    projectId: 'ali-portfolio-8d582',
    storageBucket: 'ali-portfolio-8d582.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDinHVcLNataNIsxLatZTcrgm5aysd7_8k',
    appId: '1:129754296273:ios:158f6d7d0e44d0ee137af0',
    messagingSenderId: '129754296273',
    projectId: 'ali-portfolio-8d582',
    storageBucket: 'ali-portfolio-8d582.appspot.com',
    iosBundleId: 'com.example.admin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDinHVcLNataNIsxLatZTcrgm5aysd7_8k',
    appId: '1:129754296273:ios:158f6d7d0e44d0ee137af0',
    messagingSenderId: '129754296273',
    projectId: 'ali-portfolio-8d582',
    storageBucket: 'ali-portfolio-8d582.appspot.com',
    iosBundleId: 'com.example.admin',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCYTo2-XvswfeFA30sYTfZZVpu26tG2Py0',
    appId: '1:129754296273:web:cfb2bda9bbc1131f137af0',
    messagingSenderId: '129754296273',
    projectId: 'ali-portfolio-8d582',
    authDomain: 'ali-portfolio-8d582.firebaseapp.com',
    storageBucket: 'ali-portfolio-8d582.appspot.com',
  );
}
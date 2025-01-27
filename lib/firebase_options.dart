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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCUuLIkkHYi51AI1_I9MGLOkLSMXIv-7OY',
    appId: '1:886539389798:web:2030f1bf4b9612791896a7',
    messagingSenderId: '886539389798',
    projectId: 'asimetrics-198b8',
    authDomain: 'asimetrics-198b8.firebaseapp.com',
    storageBucket: 'asimetrics-198b8.appspot.com',
    measurementId: 'G-70BLRJZW77',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDCqgb01q6B8OaF9KKPXqB4KyfsqriqEVg',
    appId: '1:886539389798:android:3e8282980062bf4c1896a7',
    messagingSenderId: '886539389798',
    projectId: 'asimetrics-198b8',
    storageBucket: 'asimetrics-198b8.appspot.com',
  );

}
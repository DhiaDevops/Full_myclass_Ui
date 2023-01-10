// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyDbTqZ4tL98HmyFamYZKj8_RT1K6p9nZsA',
    appId: '1:727663779338:web:fa9997d319e4bf05a309f3',
    messagingSenderId: '727663779338',
    projectId: 'myclass-ae8a3',
    authDomain: 'myclass-ae8a3.firebaseapp.com',
    storageBucket: 'myclass-ae8a3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyABRoxLliT50EM6OIQU6B8qPFuYMLju-IU',
    appId: '1:727663779338:android:46b5e27916c7aaf8a309f3',
    messagingSenderId: '727663779338',
    projectId: 'myclass-ae8a3',
    storageBucket: 'myclass-ae8a3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCtaVQePiN951RAUr4cHXbhYXj9PUrDaT8',
    appId: '1:727663779338:ios:39f336647d6f1ca3a309f3',
    messagingSenderId: '727663779338',
    projectId: 'myclass-ae8a3',
    storageBucket: 'myclass-ae8a3.appspot.com',
    androidClientId: '727663779338-kfpf1bk2f8mad7sd1mnrjggdb5epramf.apps.googleusercontent.com',
    iosClientId: '727663779338-vhheprl5pv6ul2cqnatfmdsjh2e5p8rj.apps.googleusercontent.com',
    iosBundleId: 'com.example.myClass',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCtaVQePiN951RAUr4cHXbhYXj9PUrDaT8',
    appId: '1:727663779338:ios:39f336647d6f1ca3a309f3',
    messagingSenderId: '727663779338',
    projectId: 'myclass-ae8a3',
    storageBucket: 'myclass-ae8a3.appspot.com',
    androidClientId: '727663779338-kfpf1bk2f8mad7sd1mnrjggdb5epramf.apps.googleusercontent.com',
    iosClientId: '727663779338-vhheprl5pv6ul2cqnatfmdsjh2e5p8rj.apps.googleusercontent.com',
    iosBundleId: 'com.example.myClass',
  );
}

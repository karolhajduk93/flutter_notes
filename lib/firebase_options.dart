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
    apiKey: 'AIzaSyA0giSOHVRSnNuOibcT8nSEOFIajPrXQ60',
    appId: '1:780238952661:web:3e90501bd4a98b82c16a5c',
    messagingSenderId: '780238952661',
    projectId: 'flutter-notes-9352131',
    authDomain: 'flutter-notes-9352131.firebaseapp.com',
    storageBucket: 'flutter-notes-9352131.appspot.com',
    measurementId: 'G-2BB21PGBXC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGa5nmQ1hJ4SKftFq3XZkmR8xEtSj7fZ4',
    appId: '1:780238952661:android:5ff34f2429a0a5c1c16a5c',
    messagingSenderId: '780238952661',
    projectId: 'flutter-notes-9352131',
    storageBucket: 'flutter-notes-9352131.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyADBysRzVSlXMeH1D7zSdKPYWKNurMnZ50',
    appId: '1:780238952661:ios:c12a59f1592a151dc16a5c',
    messagingSenderId: '780238952661',
    projectId: 'flutter-notes-9352131',
    storageBucket: 'flutter-notes-9352131.appspot.com',
    iosClientId: '780238952661-8gtaup1f18nr8v695pscdmna9ttkn031.apps.googleusercontent.com',
    iosBundleId: 'com.karol.hajduk.flutterNotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyADBysRzVSlXMeH1D7zSdKPYWKNurMnZ50',
    appId: '1:780238952661:ios:c12a59f1592a151dc16a5c',
    messagingSenderId: '780238952661',
    projectId: 'flutter-notes-9352131',
    storageBucket: 'flutter-notes-9352131.appspot.com',
    iosClientId: '780238952661-8gtaup1f18nr8v695pscdmna9ttkn031.apps.googleusercontent.com',
    iosBundleId: 'com.karol.hajduk.flutterNotes',
  );
}

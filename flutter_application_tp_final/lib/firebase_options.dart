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
    apiKey: 'AIzaSyDRizt_vlfx8_BV7lvxeoMMT43VtUJAIpE',
    appId: '1:123544485213:web:99c24e173829e96bde7cb4',
    messagingSenderId: '123544485213',
    projectId: 'tp-final-de-dap',
    authDomain: 'tp-final-de-dap.firebaseapp.com',
    storageBucket: 'tp-final-de-dap.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClv7dz991bk5-Cjnx1UaT_lIEayViPuK0',
    appId: '1:123544485213:android:fe9edbf62c14f01cde7cb4',
    messagingSenderId: '123544485213',
    projectId: 'tp-final-de-dap',
    storageBucket: 'tp-final-de-dap.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDRizt_vlfx8_BV7lvxeoMMT43VtUJAIpE',
    appId: '1:123544485213:web:dbca2e47caf14a41de7cb4',
    messagingSenderId: '123544485213',
    projectId: 'tp-final-de-dap',
    authDomain: 'tp-final-de-dap.firebaseapp.com',
    storageBucket: 'tp-final-de-dap.firebasestorage.app',
  );

}
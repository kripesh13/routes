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
    apiKey: 'AIzaSyBolROK5SDgRi6kwDlieYMexEzn02OnwlM',
    appId: '1:943675604857:web:81895ee834180a06e839a8',
    messagingSenderId: '943675604857',
    projectId: 'road-sewa',
    authDomain: 'road-sewa.firebaseapp.com',
    storageBucket: 'road-sewa.firebasestorage.app',
    measurementId: 'G-JFMG8J2B93',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAS_cruwEcCXJm6YCL3DNObysfqb1unhzs',
    appId: '1:943675604857:android:628c329bbb787eede839a8',
    messagingSenderId: '943675604857',
    projectId: 'road-sewa',
    storageBucket: 'road-sewa.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAipff-l1xNF-PioiQApxo9CFs99mhB_vM',
    appId: '1:943675604857:ios:7667bbe19e799f36e839a8',
    messagingSenderId: '943675604857',
    projectId: 'road-sewa',
    storageBucket: 'road-sewa.firebasestorage.app',
    iosBundleId: 'com.nectardigit.mansa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAipff-l1xNF-PioiQApxo9CFs99mhB_vM',
    appId: '1:943675604857:ios:7667bbe19e799f36e839a8',
    messagingSenderId: '943675604857',
    projectId: 'road-sewa',
    storageBucket: 'road-sewa.firebasestorage.app',
    iosBundleId: 'com.nectardigit.mansa',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBolROK5SDgRi6kwDlieYMexEzn02OnwlM',
    appId: '1:943675604857:web:d0569577d4aa3077e839a8',
    messagingSenderId: '943675604857',
    projectId: 'road-sewa',
    authDomain: 'road-sewa.firebaseapp.com',
    storageBucket: 'road-sewa.firebasestorage.app',
    measurementId: 'G-QWZNRKEEFG',
  );

}
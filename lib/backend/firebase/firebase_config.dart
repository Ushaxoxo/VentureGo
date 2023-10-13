import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAUv3y8fvnuDrA4jb7ji9XJA5MASWkxkYA",
            authDomain: "venturego-57ab6.firebaseapp.com",
            projectId: "venturego-57ab6",
            storageBucket: "venturego-57ab6.appspot.com",
            messagingSenderId: "1036384790178",
            appId: "1:1036384790178:web:39deef5ba0625a98af59fb",
            measurementId: "G-LZ5KJKVGLZ"));
  } else {
    await Firebase.initializeApp();
  }
}

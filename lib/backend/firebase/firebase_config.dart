import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCU5EHsWyhSn6-5vXfTP4oRvwpNY3eec1Q",
            authDomain: "gigz-2023.firebaseapp.com",
            projectId: "gigz-2023",
            storageBucket: "gigz-2023.appspot.com",
            messagingSenderId: "983782648519",
            appId: "1:983782648519:web:3486386975e9a44cb8ece2",
            measurementId: "G-W2PE7TNKQM"));
  } else {
    await Firebase.initializeApp();
  }
}

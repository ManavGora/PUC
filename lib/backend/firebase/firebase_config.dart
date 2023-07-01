import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCsW9NVWrdvwbGkGkpwksyOqXyVbzsGB2I",
            authDomain: "new123-f7b30.firebaseapp.com",
            projectId: "new123-f7b30",
            storageBucket: "new123-f7b30.appspot.com",
            messagingSenderId: "367927659900",
            appId: "1:367927659900:web:f5616889ca554f7cd428f9",
            measurementId: "G-4EBP75FZ0Z"));
  } else {
    await Firebase.initializeApp();
  }
}

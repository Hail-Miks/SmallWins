import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA_oucdeHT6wdKO0DhVH_QHYo_SnwZWz7Y",
            authDomain: "smallwinsapp-6d762.firebaseapp.com",
            projectId: "smallwinsapp-6d762",
            storageBucket: "smallwinsapp-6d762.firebasestorage.app",
            messagingSenderId: "829352572490",
            appId: "1:829352572490:web:8b2d07aa1f85b04c1098b3"));
  } else {
    await Firebase.initializeApp();
  }
}

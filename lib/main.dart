import 'package:flutter/material.dart';
import 'package:spanandshade/willbeback.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD0sxD8ffG2s9d1JWvhrRbfYnfQ7P1yoQ8",
      projectId: "sas-website-ec738",
      messagingSenderId: "821450981295",
      appId: "1:821450981295:web:8f2b6983dd2e9ea602395a",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Willbeback(),
    );
  }
}

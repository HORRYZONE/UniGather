import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:unigather/features/app/splash_screen/splash_screen.dart';
import 'package:unigather/features/user_auth/presentation/pages/login_page.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyCa9eDvpaOtHV1w3oP1p1XUMhL29j9_NAU", appId: "1:580446454434:web:980a1e704f64aa60cd4dfb", messagingSenderId: "580446454434", projectId: "unigather-f87de"));
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter FireBase',
      home: SplashSCreen(
        child: LoginPage(),
      ),
    );
  }
}

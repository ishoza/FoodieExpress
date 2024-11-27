import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hshm_food/admin/admin_login.dart';
import 'package:hshm_food/admin/home_admin.dart';
import 'package:hshm_food/pages/bottomnav.dart';
import 'package:hshm_food/pages/onboard.dart';
import 'package:hshm_food/pages/signup.dart';
import 'package:hshm_food/widget/app_constant.dart';
import 'firebase_options.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = publishableKey;
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyCKA0pWeMxlABYGlj3IFU6z9QdyBXp3EvE",
      appId: "1:394889878051:android:ac7031f986535f7154af96",
      messagingSenderId: "4889878051",
      projectId: "hshmfood",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Onboard());
  }
}

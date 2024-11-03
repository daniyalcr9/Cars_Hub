import 'package:cars_hub/adpost.dart';
import 'package:cars_hub/auth.dart';
import 'package:cars_hub/home.dart';
import 'package:cars_hub/infohub.dart';
import 'package:cars_hub/otherservices.dart';
import 'package:cars_hub/signup.dart';
import 'package:cars_hub/user.dart';
import 'package:cars_hub/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    StreamProvider<CustomUser?>.value(
      value: AuthService().user,
      initialData: null, // Provide initial data if needed
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        // accentColor: Colors.orangeAccent,
        fontFamily: 'Roboto',
        useMaterial3: true,
      ),
      home: Wrapper(),
    );
  }
}

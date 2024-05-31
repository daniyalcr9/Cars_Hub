import 'package:cars_hub/adpost.dart';
import 'package:cars_hub/home.dart';
import 'package:cars_hub/infohub.dart';
import 'package:cars_hub/otherservices.dart';
import 'package:cars_hub/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      home: SignUp(),
    );
  }
}

import 'package:cars_hub/login.dart';
import 'package:cars_hub/signup.dart';
import 'package:flutter/cupertino.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool ShowSignin = true;
  void toggleview() {
    setState(() {
      ShowSignin = !ShowSignin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ShowSignin) {
      return Login(
        toggleview: toggleview,
      );
    } else {
      return SignUp(toggleview: toggleview);
    }
  }
}

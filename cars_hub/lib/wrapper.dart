import 'package:cars_hub/authenticate.dart';
import 'package:cars_hub/home.dart';
import 'package:cars_hub/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    // Getting the current user from the provider
    final user = Provider.of<CustomUser?>(context);

    // If user is null, navigate to the Authenticate screen (Login/Signup)
    if (user == null) {
      return Authenticate();
    } else {
      // Ensure you access the username properly from the 'user' object
      return Home(
          emailuser: user.email ?? '', username: user.username ?? 'Guest');
    }
  }
}

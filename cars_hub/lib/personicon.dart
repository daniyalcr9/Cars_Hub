import 'package:cars_hub/auth.dart';
import 'package:cars_hub/authenticate.dart';
import 'package:cars_hub/login.dart';
import 'package:cars_hub/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerContent extends StatefulWidget {
  final String emailuser;

  const DrawerContent({
    Key? key,
    required this.emailuser,
  }) : super(key: key);

  @override
  State<DrawerContent> createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {
  @override
  Widget build(BuildContext context) {
    final customUser = Provider.of<CustomUser?>(context);
    final AuthService _auth = AuthService();

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, nigga",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Username"),
              subtitle: Text("nigga"), // Displayed as passed from SignUp
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text(customUser?.email ?? "N/A"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                // Navigate to settings
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () async {
                await _auth.signout();
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => Authenticate()),
                  (Route<dynamic> route) => false, // Clears all routes
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

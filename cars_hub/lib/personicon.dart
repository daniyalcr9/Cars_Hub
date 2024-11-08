import 'package:cars_hub/auth.dart';
import 'package:cars_hub/login.dart';
import 'package:cars_hub/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerContent extends StatefulWidget {
  final String emailuser;
  final String username;

  const DrawerContent({
    Key? key,
    required this.emailuser,
    required this.username,
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
              "Hello, ${widget.username}!",
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
              subtitle:
                  Text(widget.username), // Displayed as passed from SignUp
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
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => Login(toggleview: () {})),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

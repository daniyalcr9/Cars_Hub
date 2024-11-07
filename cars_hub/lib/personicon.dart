import 'package:cars_hub/auth.dart';
import 'package:cars_hub/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerContent extends StatelessWidget {
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
              "Hello, ${customUser?.uid ?? 'Guest'}!",
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
              subtitle: Text(customUser?.uid ?? "N/A"),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("user@example.com"),
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
                // Log out functionality
                await _auth.signout();
              },
            ),
          ],
        ),
      ),
    );
  }
}

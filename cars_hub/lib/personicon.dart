import 'package:cars_hub/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserPanelContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the CustomUser object from the provider
    final customUser = Provider.of<CustomUser?>(context);

    return Column(
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
          subtitle: Text(
              "user@example.com"), // Placeholder; replace with real data if available
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: () {
            // Add actions or navigation to settings here
          },
        ),
      ],
    );
  }
}

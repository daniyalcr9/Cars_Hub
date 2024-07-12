import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Mobile Number', filled: true, // Enable filling
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0), // Make it circular
              borderSide: BorderSide.none, // Remove border
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email', filled: true, // Enable filling
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0), // Make it circular
              borderSide: BorderSide.none, // Remove border
            ),
          ),
        ),
      ],
    );
  }
}

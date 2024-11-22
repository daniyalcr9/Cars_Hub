import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();
  ContactInfo({
    super.key,
    required this.number,
    required this.email,
  });

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  //DateTime? _selectedDate;
  //String _buttonText = 'Click to select in which year your car was registered';

  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      TextFormField(
        keyboardType: TextInputType.number,
        controller: widget.number,
        validator: (value) {
          if (value!.isEmpty) {
            return "Please Enter your Phone number";
          }
          return null;
        },
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
        controller: widget.email,
        validator: (value) {
          if (value!.isEmpty) {
            return "Please Enter your Email";
          } else if (!emailRegex.hasMatch(value)) {
            return "Enter a Valid Email";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: 'Email', filled: true, // Enable filling
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0), // Make it circular
            borderSide: BorderSide.none, // Remove border
          ),
        ),
      ),
    ]);
  }
}

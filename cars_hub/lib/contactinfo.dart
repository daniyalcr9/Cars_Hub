import 'package:flutter/material.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  //DateTime? _selectedDate;
  //String _buttonText = 'Click to select in which year your car was registered';

  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  // Future<void> _selectYear(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime(2100),
  //     initialEntryMode: DatePickerEntryMode.input,
  //     helpText: 'Select a year', // Optional help text
  //     errorFormatText: 'Enter valid year', // Optional error message
  //     errorInvalidText: 'Enter year in range', // Optional error message
  //     fieldLabelText: 'Year', // Optional label text
  //     builder: (BuildContext context, Widget? child) {
  //       return Theme(
  //         data: ThemeData.light(), // Optional light theme
  //         child: child!,
  //       );
  //     },
  //     initialDatePickerMode: DatePickerMode.year,
  //   );
  //   if (picked != null && picked != _selectedDate) {
  //     setState(() {
  //       _selectedDate = picked;
  //       _buttonText = '${_selectedDate!.year}';
  //     });
  //   }
  // }

  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      TextFormField(
        keyboardType: TextInputType.number,
        controller: number,
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
        controller: email,
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
      // Container(
      //     child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: <Widget>[
      //     // // Text(
      //     // //   'Please select a year:',
      //     // //   style: TextStyle(fontSize: 18.0),
      //     // // ),
      //     // SizedBox(height: 20.0),
      //     ElevatedButton(
      //       onPressed: () => _selectYear(context),
      //       style: ElevatedButton.styleFrom(
      //         minimumSize: Size(370, 57), // Adjust width and height as needed
      //       ),
      //       child: Text(_buttonText),
      //     ),
      //   ],
      // ))
    ]);
  }
}

import 'package:flutter/material.dart';

class CarInfo extends StatefulWidget {
  TextEditingController city = TextEditingController();
  TextEditingController make = TextEditingController();
  TextEditingController model = TextEditingController();
  TextEditingController variant = TextEditingController();
  TextEditingController registered_in = TextEditingController();
  TextEditingController color = TextEditingController();
  TextEditingController mileage = TextEditingController();
  TextEditingController price = TextEditingController();
  CarInfo({
    Key? key,
    required this.city,
    required this.make,
    required this.model,
    required this.variant,
    required this.registered_in,
    required this.color,
    required this.mileage,
    required this.price,
  }) : super(key: key);

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          controller: widget.city,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please Enter your City";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'City', filled: true, // Enable filling
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
          controller: widget.make,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please Enter your Car Make/Company";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Make', filled: true, // Enable filling
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
          keyboardType: TextInputType.number,
          controller: widget.model,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please Enter your Car Model";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Model', filled: true, // Enable filling
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
          controller: widget.variant,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please Enter your Car Variant";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Variant', filled: true, // Enable filling
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
          keyboardType: TextInputType.number,
          controller: widget.registered_in,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please Enter your Car Registered Year";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Registered In', filled: true, // Enable filling
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
          controller: widget.color,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please Enter your Car's Exterior Color";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Exterior Color', filled: true, // Enable filling
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
          controller: widget.mileage,
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please Enter your Car Mileage";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Mileage in KM', filled: true, // Enable filling
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
          controller: widget.price,
          keyboardType: TextInputType.number,
          validator: (value) {
            if (value!.isEmpty) {
              return "Please Enter your Car Price you want to sell";
            }
            return null;
          },
          decoration: InputDecoration(
            labelText: 'Price', filled: true, // Enable filling
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
      ],
    );
  }
}

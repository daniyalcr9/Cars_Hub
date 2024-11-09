import 'package:cars_hub/carimage.dart';
import 'package:cars_hub/contactinfo.dart';
import 'package:flutter/material.dart';
import 'package:cars_hub/carinfo.dart';
import 'package:cars_hub/home.dart';

class AdPosting extends StatefulWidget {
  final String emailuser; // Add emailuser parameter to receive the email

  const AdPosting({
    super.key,
    required this.emailuser,
  }); // Constructor to accept emailuser

  @override
  State<AdPosting> createState() => _AdPostingState();
}

class _AdPostingState extends State<AdPosting> {
  GlobalKey<FormState> form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: form,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 32, 122, 182),
                  Color.fromARGB(255, 7, 6, 110),
                  Color.fromARGB(255, 32, 122, 182),
                  Color.fromARGB(255, 7, 6, 110),
                  Color.fromARGB(255, 32, 122, 182),
                ], // Mixture of blue and green
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Post Your Ad Today',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212),
                    ),
                  ),
                  Text(
                    'Car Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212),
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // Car Information uploaded by user
                  CarInfo(),

                  SizedBox(height: 20.0),

                  Text(
                    'Upload Car Images',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212),
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // Car images uploaded by user to sell
                  CarImageUpload(),

                  SizedBox(height: 20.0),

                  Text(
                    'Contact Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212),
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // Contact info added by user
                  ContactInfo(),

                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Handle ad submission
                      if (form.currentState!.validate()) {
                        // Here, handle the form data submission
                        // For example, you might want to save the ad details
                        // You can access the email like this:
                        String emailuser = widget.emailuser;
                        // Now you have access to the emailuser and other form data
                      }
                    },
                    child: Text('Post Ad'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality for the floating button
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Home(
                emailuser: widget.emailuser,
              ), // Pass emailuser back to Home
            ),
          );
        },
        child: Icon(Icons.arrow_back),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Make it circular
        ),
      ),
    );
  }
}

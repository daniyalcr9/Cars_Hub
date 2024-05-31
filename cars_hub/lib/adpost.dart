import 'package:flutter/material.dart';

class AdPosting extends StatefulWidget {
  const AdPosting({super.key});

  @override
  State<AdPosting> createState() => _AdPostingState();
}

class _AdPostingState extends State<AdPosting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Post Your Ad'),
      // ),
      body: Container(
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
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
              ),
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
              _buildCarInformationForm(),
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
              _buildImageUploadSection(),
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
              _buildContactInformationForm(),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle ad submission
                },
                child: Text('Post Ad'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarInformationForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
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
          decoration: InputDecoration(
            labelText: 'Mileage', filled: true, // Enable filling
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

  Widget _buildImageUploadSection() {
    return Center(
      child: IconButton(
        icon: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        onPressed: () {
          // Handle image upload
        },
        iconSize: 50.0,
      ),
    );
  }

  Widget _buildContactInformationForm() {
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

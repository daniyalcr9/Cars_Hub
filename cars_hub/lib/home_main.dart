import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero, // Remove padding
      itemCount: 1, // Number of cars
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 32, 122, 182),
                Color.fromARGB(255, 7, 6, 110),
                Color.fromARGB(255, 32, 122, 182),
                Color.fromARGB(255, 7, 6, 110),
                Color(0xFF207AB6),
              ], // Mixture of blue and green
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 40,
                  child: TextField(
                    style: TextStyle(fontSize: 14), // Adjust text size
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ), // Adjust padding
                      hintText: 'Search any Car of your choice!',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ), // Making search bar circular
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Buy a Car Today!",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212)),
                ),
                SizedBox(height: 8),
                Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ), // Rounded corners for image
                        child: Image.asset(
                          'assets/car1.jpg',
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'COROLLA',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(255, 7, 6, 110),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Make: Toyota  Model: 2018  Variant: Grande 1.8L',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color.fromARGB(255, 7, 6, 110),
                        ),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ), // Rounded corners for image
                        child: Image.asset(
                          'assets/secondcar.jpg',
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'CIVIC',
                        style: TextStyle(
                            color: Color.fromARGB(255, 7, 6, 110),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Make: Honda | Model: 2023 | Variant: Oriel 1.8L',
                        style: TextStyle(
                            color: Color.fromARGB(255, 7, 6, 110),
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ), // Rounded corners for image
                        child: Image.asset(
                          'assets/car3.jpg',
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'SONATA',
                        style: TextStyle(
                            color: Color.fromARGB(255, 7, 6, 110),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Make: Hyundai  Model: 2024  Variant: Grande 2.3L',
                        style: TextStyle(
                            color: Color.fromARGB(255, 7, 6, 110),
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          8.0,
                        ), // Rounded corners for image
                        child: Image.asset(
                          'assets/secondcar.jpg',
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'COROLLA',
                        style: TextStyle(
                            color: Color.fromARGB(255, 7, 6, 110),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Make: Toyota | Model: 2018 | Variant: Grande 1.8L',
                        style: TextStyle(
                            color: Color.fromARGB(255, 7, 6, 110),
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

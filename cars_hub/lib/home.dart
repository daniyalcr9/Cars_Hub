import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Cars Hub',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Color.fromARGB(255, 32, 122, 182),
            ),
          ),
        ),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.person),
          )
        ],
      ),
      backgroundColor: Colors.transparent, // Setting transparent background
      extendBodyBehindAppBar: true, // Extending background behind the app bar
      body: ListView.builder(
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
                  Color.fromARGB(255, 32, 122, 182),
                ], // Mixture of blue and green
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality for the floating button
        },
        child: Icon(Icons.add),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Make it circular
        ),
        // backgroundColor: Theme.of(context).accentColor, // Using accent color for the floating action button
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Other Services',
          ),
        ],
      ),
    );
  }
}

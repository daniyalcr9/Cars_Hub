import 'package:flutter/material.dart';

class infohub extends StatefulWidget {
  const infohub({super.key});

  @override
  State<infohub> createState() => _infohubState();
}

class _infohubState extends State<infohub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: Text(
      //       'Cars Hub',
      //       style: TextStyle(
      //         fontWeight: FontWeight.bold,
      //         fontSize: 28,
      //         color: Color.fromARGB(255, 32, 122, 182),
      //       ),
      //     ),
      //   ),
      //   leading: Icon(Icons.menu),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 8),
      //       child: Icon(Icons.person),
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
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
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[200],
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(fontSize: 14), // Adjust text size
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ), // Adjust padding
                        hintText: "Search any Car of your choice!",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ), // Making search bar circular
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Welcome to the Car Information Portal!',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212)),
                  //     textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),
                // Text(
                //   'Find all the information about your favorite cars here.',
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //     color: Color.fromARGB(255, 165, 193, 212),
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                SizedBox(height: 30.0),
                Text(
                  'Popular Searches',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 193, 212),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 60.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle SUVs button press
                        },
                        child: Text('SUVs'),
                      ),
                      SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          // Handle Electric Cars button press
                        },
                        child: Text('Electric Cars'),
                      ),
                      SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          // Handle Luxury Cars button press
                        },
                        child: Text('Luxury Cars'),
                      ),
                      // Add more buttons here if needed
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Featured Cars',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 193, 212),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 180.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // Featured car cards
                      buildFeaturedCarCard('Local Cars', 'assets/car1.jpg'),
                      buildFeaturedCarCard(
                          'German Cars', 'assets/secondcar.jpg'),
                      buildFeaturedCarCard('Japanese Cars', 'assets/car3.jpg'),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 193, 212),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                Text(
                  'Email: info@carportal.com\nPhone: 123-456-7890',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 193, 212),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.info),
      //       label: 'Info Hub',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'Other Services',
      //     ),
      //   ],
      // ),
    );
  }

  Widget buildFeaturedCarCard(String title, String imagePath) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8, // Adjust width as needed
      margin: EdgeInsets.only(right: 10.0),
      child: Card(
        elevation: 4.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 120.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                    color: Color.fromARGB(255, 7, 6, 110),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

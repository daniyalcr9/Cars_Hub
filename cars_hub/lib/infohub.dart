import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class InfoHub extends StatefulWidget {
  const InfoHub({Key? key}) : super(key: key);

  @override
  State<InfoHub> createState() => _InfoHubState();
}

class _InfoHubState extends State<InfoHub> {
  final String apiUrl = "https://api.api-ninjas.com/v1/cars";
  final String apiKey = "Z5BJA+whi+gUGoyDxkhiag==IScj5KejKxrYTaFr";

  bool _isLoading = false;
  List<dynamic> _searchResults = [];
  final TextEditingController _searchController = TextEditingController();

  Future<void> fetchCarData(String query) async {
    if (query.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Search query cannot be empty.')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
      _searchResults = [];
    });

    final cleanedQuery = Uri.encodeComponent(query.trim());
    final url = Uri.parse('$apiUrl?make=$cleanedQuery');

    try {
      final response = await http.get(
        url,
        headers: {
          'X-Api-Key': apiKey,
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        setState(() {
          _searchResults = data;
        });
      } else {
        print('Error: ${response.statusCode}, ${response.body}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${response.statusCode}')),
        );
      }
    } catch (e) {
      print('Error fetching data: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Failed to fetch data. Please try again.')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 32, 122, 182),
                Color.fromARGB(255, 7, 6, 110),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 110, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildSearchBar(),
                if (_isLoading)
                  const Center(child: CircularProgressIndicator())
                else if (_searchResults.isNotEmpty)
                  buildSearchResults(),
                const SizedBox(height: 20.0),
                const Text(
                  'Welcome to the Car Information Portal!',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212)),
                ),
                const SizedBox(height: 30.0),
                const SizedBox(height: 30.0),
                const Text(
                  'Popular Searches',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 193, 212),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: 60.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          fetchCarData('SUV');
                        },
                        child: const Text('SUVs'),
                      ),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          fetchCarData('Electric Cars');
                        },
                        child: const Text('Electric Cars'),
                      ),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          fetchCarData('Luxury Cars');
                        },
                        child: const Text('Luxury Cars'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Featured Cars',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 193, 212),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 180.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildFeaturedCarCard('Local Cars', 'assets/car1.jpg'),
                      buildFeaturedCarCard(
                          'German Cars', 'assets/secondcar.jpg'),
                      buildFeaturedCarCard('Japanese Cars', 'assets/car3.jpg'),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Contact Us',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 193, 212),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10.0),
                const Text(
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
    );
  }

  Widget buildSearchBar() {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[200],
      ),
      child: Center(
        child: TextField(
          controller: _searchController,
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            hintText: "Search any car of your choice!",
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          onSubmitted: (query) {
            fetchCarData(query);
          },
        ),
      ),
    );
  }

  Widget buildSearchResults() {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        const Text(
          'Search Results:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 165, 193, 212),
          ),
        ),
        const SizedBox(height: 10.0),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _searchResults.length,
          itemBuilder: (context, index) {
            final car = _searchResults[index];
            return buildCarInfoCard(car);
          },
        ),
      ],
    );
  }

  Widget buildCarInfoCard(Map<String, dynamic> car) {
    String carName = '${car['make']} ${car['model']}';
    carName = carName.replaceFirst(
        carName[0], carName[0].toUpperCase()); // Capitalize first letter
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              carName,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8.0),
            Text('Year: ${car['year'] ?? 'Unknown'}'),
            Text('Fuel Type: ${car['fuel'] ?? 'Unknown'}'),
            Text('Transmission: ${car['transmission'] ?? 'Unknown'}'),
            Text('Price: ${car['price'] ?? 'Unknown'}'),
          ],
        ),
      ),
    );
  }

  Widget buildFeaturedCarCard(String title, String imagePath) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: const EdgeInsets.only(right: 10.0),
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
                style: const TextStyle(
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

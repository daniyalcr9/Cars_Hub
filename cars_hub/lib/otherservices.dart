import 'package:flutter/material.dart';

class otherservices extends StatefulWidget {
  const otherservices({super.key});

  @override
  State<otherservices> createState() => _otherservicesState();
}

class _otherservicesState extends State<otherservices> {
  String _selectedService = '';
  String _selectedRepairPart = '';
  String _carMake = '';
  String _carModel = '';
  String _carYear = '';
  String _location = '';

  final List<String> _services = ['Maintenance', 'Repair'];
  final List<String> _repairParts = [
    'Engine',
    'Transmission',
    'Brakes',
    'Suspension',
    'Electrical',
    'Other'
  ];

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
      body: SingleChildScrollView(
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Services at your Door Step!',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Select Service:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 193, 212),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white, // Set the initial color
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: DropdownButtonFormField(
                      value:
                          _selectedService.isNotEmpty ? _selectedService : null,
                      items: _services.map((service) {
                        return DropdownMenuItem(
                          value: service,
                          child: Text(service),
                        );
                      }).toList(),
                      hint: Text('Choose a service'),
                      onChanged: (value) {
                        setState(() {
                          _selectedService = value!;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
                if (_selectedService == 'Repair') ...[
                  Text(
                    'Select Repair Part:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 165, 193, 212),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(color: Colors.grey),
                      color: Colors.white, // Set the initial color
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: DropdownButtonFormField(
                        value: _selectedRepairPart.isNotEmpty
                            ? _selectedRepairPart
                            : null,
                        items: _repairParts.map((part) {
                          return DropdownMenuItem(
                            value: part,
                            child: Text(part),
                          );
                        }).toList(),
                        hint: Text('Choose a part'),
                        onChanged: (value) {
                          setState(() {
                            _selectedRepairPart = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
                SizedBox(height: 20),
                Text(
                  'Car Details:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 193, 212),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Car Make',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _carMake = value;
                    });
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Car Model',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _carModel = value;
                    });
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Car Year',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _carYear = value;
                    });
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Location',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _location = value;
                    });
                  },
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton.icon(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      // Implement Google sign up logic here
                    },
                    icon: Icon(
                      Icons.send,
                      color: Color.fromARGB(255, 32, 122, 182),
                    ),
                    label: Text(
                      'Submit',
                      style: TextStyle(
                        color: Color.fromARGB(255, 32, 122, 182),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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

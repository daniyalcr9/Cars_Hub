import 'package:cars_hub/adpost.dart';
import 'package:cars_hub/home_main.dart';
import 'package:cars_hub/infohub.dart';
import 'package:cars_hub/otherservices.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
        body: TabBarView(
          children: [MyWidget(), infohub(), otherservices()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add functionality for the floating button
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AdPosting()));
          },
          child: Icon(Icons.add),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0), // Make it circular
          ),
          // backgroundColor: Theme.of(context).accentColor, // Using accent color for the floating action button
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.info), text: "Info Hub"),
              Tab(icon: Icon(Icons.settings), text: "Other Services"),
            ],
          ),
        ),
        //BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       Container,
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
      ),
    );
  }
}

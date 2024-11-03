import 'package:cars_hub/adpost.dart';
import 'package:cars_hub/home_main.dart';
import 'package:cars_hub/infohub.dart';
import 'package:cars_hub/otherservices.dart';
import 'package:flutter/material.dart';
import 'package:cars_hub/personicon.dart';
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
            Builder(
              builder: (context) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () => Scaffold.of(context)
                      .openEndDrawer(), // Use Builder context here
                ),
              ),
            ),
          ],
        ),
        endDrawer: Drawer(
          // Right-side Drawer
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username: John Doe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Email: johndoe@example.com',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Profile or other actions
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Settings or other actions
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                  // Log out the user or other actions
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        body: TabBarView(
          children: [MyWidget(), infohub(), otherservices()],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AdPosting()));
          },
          child: Icon(Icons.add),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
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
      ),
    );
  }
}

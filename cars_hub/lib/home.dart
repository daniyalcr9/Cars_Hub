import 'package:cars_hub/adpost.dart';
import 'package:cars_hub/home_main.dart';
import 'package:cars_hub/infohub.dart';
import 'package:cars_hub/otherservices.dart';
import 'package:flutter/material.dart';
import 'package:cars_hub/personicon.dart';

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
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                ),
              ),
            ),
          ],
        ),
        endDrawer: DrawerContent(), // Use DrawerContent as the end drawer
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

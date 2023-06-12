import 'package:baldur/analytics.dart';
import 'package:baldur/projects.dart';
import 'package:baldur/quotation.dart';
import 'package:flutter/material.dart';
import 'package:baldur/bottom_navigator.dart';
import 'package:baldur/bottom_sheet.dart';
import 'package:baldur/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const Projects(),
    const Quotation(),
    const Analytics(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3B9B67),
        title: const Text(
          'Baldur',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        elevation: 2,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/settings');
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              )),
          const Icon(
            Icons.person,
            color: Colors.white,
          ),
          const SizedBox(width: 9),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const BottomSheetDrawer(),
      bottomNavigationBar: BottomNavigator(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
      body: _screens[selectedIndex],
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      //bottomSheet: const BottomSheetExample(),
    );
  }
}

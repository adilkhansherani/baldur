import 'package:flutter/material.dart';
import 'package:baldur/bottom_navigator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
          SizedBox(width: 9),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 0x3B, 0x9B, 0x67),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

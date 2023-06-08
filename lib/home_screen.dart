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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 0x3B, 0x9B, 0x67),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
          width: 300,
          child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [Icon(Icons.home), Text('Profile')],
                    ),
                    Row(
                      children: [Icon(Icons.add_business), Text('Add Venture')],
                    ),
                    Row(
                      children: [
                        Icon(Icons.payments_rounded),
                        Text('Payments')
                      ],
                    ),
                    Row(
                      children: [Icon(Icons.person), Text('Contact Us')],
                    ),
                    Row(
                      children: [Icon(Icons.help), Text('About Us')],
                    ),
                    Row(
                      children: [
                        Icon(Icons.person_pin_rounded),
                        Text('Privacy Policy')
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [Icon(Icons.logout_rounded), Text('Log Out')],
                ),
              ]),
        ),
      ),
    );
  }
}

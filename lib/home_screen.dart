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
      bottomNavigationBar: const BottomNavigator(),
      body: ListView(physics: const ClampingScrollPhysics(), children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(children: [
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 350,
                alignment: Alignment.center,
                color: const Color(0xff5AB584),
                padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Today',
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Total Balance'),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('10009625.0 INR'),
                    const SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                        color: const Color(0xFF3B9B67),
                        child: const Row(
                          //income and expences section
                          children: [
                            Column(
                              //income side
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      'Income',
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('40000'),
                              ],
                            ),
                            Expanded(
                              //didn't work, work here
                              child: VerticalDivider(
                                width: 20,
                                thickness: 5,
                                color: Color.fromARGB(255, 247, 22, 22),
                              ),
                            ),
                            Column(
                              //expense side
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      'expense',
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('38725'),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(),
            const SizedBox(),
            Container(),
          ]),
        ),
      ]),
    );
  }
}

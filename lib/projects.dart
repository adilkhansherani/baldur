import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('XYZ-constructions'),
                                Text(
                                    'Laoern ipsum dolor sit amet constar elit'),
                              ],
                            ),
                          ],
                        ),
                        DottedLine(),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.watch_later),
                                  Text('6 Months'),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [Icon(Icons.attach_money)],
                                  ),
                                  Text('35Lakhs')
                                ],
                              )
                            ])
                      ]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

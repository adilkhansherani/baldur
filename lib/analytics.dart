import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
          child: Column(children: [
            //LinearProgressIndicator(),
            const SizedBox(
              height: 15,
            ),
            const Text('Monthly Limit'),
            const SizedBox(
              height: 15,
            ),
            const Text('Date Overview'),
            SvgPicture.asset('lib/svgs/graphic_element.svg'),
            const SizedBox(
              height: 15,
            ),
            Container(),                                  //need work
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2584FE),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        CircleAvatar(child: Icon(Icons.credit_card_rounded)),
                        SizedBox(
                          width: 5,
                        ),
                        Text('All Budget')
                      ],
                    )),
                const SizedBox(
                  width: 25,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purpleAccent,
                          child: Icon(Icons.credit_card_rounded),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('All Budget')
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Transaction list',
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            const CircleAvatar(
                                radius: 20.5,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.add_comment_outlined)),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'item $index',
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'Quantity',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                          const Text(
                            'INR *****',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}

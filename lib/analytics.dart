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
          padding: const EdgeInsets.fromLTRB(36, 10, 36, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //LinearProgressIndicator(),
            const SizedBox(
              height: 7,
            ),
            const Text(
              'Monthly Limit',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Abel'),
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              'Date Overview',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Abril Fatface'),
            ),
            const SizedBox(
              height: 30,
            ),
            SvgPicture.asset('lib/svgs/graphic_element.svg'),
            const SizedBox(
              height: 15,
            ),
            Container(), //need work
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2584FE),
                      padding: const EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        CircleAvatar(
                            child: Icon(
                          Icons.credit_card_rounded,
                          size: 20,
                        )),
                        SizedBox(
                          width: 5,
                        ),
                        Text('All Budget')
                      ],
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFF7E5DF6),
                          child: Icon(
                            Icons.credit_card_rounded,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'All Budget',
                        )
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
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
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
                                Text('item $index',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Quantity',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 9,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                          const Text(
                            'INR *****',
                            style: TextStyle(
                              color: Color.fromARGB(255, 94, 214, 100),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
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

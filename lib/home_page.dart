import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class HomPage extends StatefulWidget {
  const HomPage({super.key});

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(physics: const ClampingScrollPhysics(), children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(children: [
          const SizedBox(
            height: 15,
          ),

          //Total Balance window
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 342,
              height: 206,
              alignment: Alignment.center,
              color: const Color(0xFF5AB584),
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Abel',
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Abel',
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '10009625.0 ',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Abel',
                              fontSize: 24,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'INR',
                          style: TextStyle(
                              color: Color(0xFFDFCCF8),
                              fontFamily: 'Abel',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ]),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      height: 68,
                      width: 292,
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      color: const Color(0xFF3B9B67),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //income and expences section
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //income side
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.arrow_downward,
                                    color: Color(0xFF05EC61),
                                  ),
                                  Text(
                                    'Income',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Abel'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '40000',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Abel',
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 48,
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.zero,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                            ),
                            child: const VerticalDivider(
                              width: 2,
                              thickness: 1,
                              color: Colors.white,
                            ),
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //expense side
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.arrow_upward,
                                    color: Color(0xFFFF0E0E),
                                  ),
                                  Text(
                                    'Expense',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Abel'),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '38725',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Abel',
                                ),
                              ),
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

          // Recent transaction row
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent transactions',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'Actor',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'see all',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontFamily: 'Actor',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),

          const SizedBox(
            height: 15,
          ),

          // list builder to show list of recent transaction
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
                          color: Colors.white,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            const CircleAvatar(
                                radius: 20.5,
                                backgroundColor: Color(0xFF5AB584),
                                child: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Cement $index',
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
                                  'Quantity \n 5 quantity x 460 Rs',
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
                          Text(
                            'INR 1240',
                            style: TextStyle(
                              color: Colors.green[400],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const DottedLine(),
                    ]),
                  ),
                ),
              );
            },
          ),
        ]),
      ),
    ]);
  }
}

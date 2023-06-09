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
                    mainAxisAlignment: MainAxisAlignment.end,
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Recent transactions'), Text('see all')],
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
    ]);
  }
}

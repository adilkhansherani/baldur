import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Quotation extends StatefulWidget {
  const Quotation({super.key});

  @override
  State<Quotation> createState() => _QuotationState();
}

class _QuotationState extends State<Quotation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
              physics: const BouncingScrollPhysics(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: PhysicalModel(
                  color: Colors.white,
                  elevation: 18,
                  shadowColor: Colors.red,////working        here
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 10,
                            offset: const Offset(10, 18),
                            blurRadius: 18,
                            color: Colors.black.withOpacity(1),
                          ),
                        ]),
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
                                  Text('XYZ-quotation'),
                                  Text('21-05-2023'),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.show_chart),
                                  Icon(Icons.edit),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Total area:**** Sq.ft'),
                          SizedBox(
                            height: 10,
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
                                      children: [
                                        Icon(Icons.camera_alt),
                                        Icon(Icons.drag_handle)
                                      ],
                                    ),
                                    Text('35Lakhs')
                                  ],
                                )
                              ])
                        ]),
                  ),
                ),
              ))),
    );
  }
}

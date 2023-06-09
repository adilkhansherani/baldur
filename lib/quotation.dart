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
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              physics: const BouncingScrollPhysics(),
              child: ClipRRect(
                child: Container(
                  color: const Color.fromARGB(255, 192, 224, 193),
                  child: const Column(children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('XYZ-quotation'),
                            SizedBox(height: 10),
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
                    Row(children: [
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
              ))),
    );
  }
}

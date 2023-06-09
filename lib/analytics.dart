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
      body: Container(
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
          Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      CircleAvatar(child: Icon(Icons.credit_card_rounded)),
                      SizedBox(
                        width: 5,
                      ),
                      Text('All Budget')
                    ],
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      CircleAvatar(child: Icon(Icons.credit_card_rounded)),
                      SizedBox(
                        width: 5,
                      ),
                      Text('All Budget')
                    ],
                  ))
            ],
          )
        ]),
      ),
    );
  }
}

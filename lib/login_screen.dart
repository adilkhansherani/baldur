import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double kBorderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('lib/svgs/Login_Screen.svg'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 0.5,
            ), //                work here
            width: 300,
            child: const Column(children: [
              SizedBox(
                height: 15,
                child: ColoredBox(color: Color(0x41835486)),
              ),
              Text(
                'Hello',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 15,
                child: ColoredBox(color: Color.fromARGB(255, 131, 84, 134)),
              ),
              Text(
                "let's see Construction Expense Manager",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15,
                child: ColoredBox(color: Color(0x41835486)),
              ),
              /**const Text(
                "username",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
              */
              TextField(
                maxLength: 50,
                decoration: InputDecoration(
                  //labelText: 'Password', // Optional label text
                  hintText: 'Username',
                  /**labelStyle: TextStyle(
                    decoration: TextDecoration
                        .underline, // Add underline decoration to the label
                  ),
                  */
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color:
                            Colors.grey), // Define the color of the underline
                  ),
                ),
              ),
              TextField(
                maxLength: 50,
                decoration: InputDecoration(
                  //labelText: 'Password', // Optional label text
                  hintText: 'Password',
                  /**labelStyle: TextStyle(
                    decoration: TextDecoration
                        .underline, // Add underline decoration to the label
                  ),
                  */
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color:
                            Colors.grey), // Define the color of the underline
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double kBorderRadius = 10.0;
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                    child: ColoredBox(color: Color(0x41835486)),
                  ),
                  const Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 15,
                    child: ColoredBox(color: Color.fromARGB(255, 131, 84, 134)),
                  ),
                  const Text(
                    "let's see Construction Expense Manager",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    child: ColoredBox(color: Color(0x41835486)),
                  ),
                  const TextField(
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
                            color: Colors
                                .grey), // Define the color of the underline
                      ),
                    ),
                  ),
                  const TextField(
                    maxLength: 50,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .grey), // Define the color of the underline
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue;
                          });
                        },
                      ),
                      const Text('Remember me'),
                      const SizedBox(
                        width: 50,
                      ),
                      const Text(
                        'Forgot Password?',
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      textStyle: const TextStyle(fontSize: 18),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 4,
                    ),
                    onPressed: () {
                      // Add your sign-in logic here
                    },
                    child: const Text('login'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 18,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                    ),
                    onPressed: () {
                      // Add your sign-in logic here
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              )),
        ]),
      ),
    ));
  }
}

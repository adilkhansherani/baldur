import 'package:flutter/material.dart';

class BottomSheetDrawer extends StatefulWidget {
  const BottomSheetDrawer({super.key});

  @override
  State<BottomSheetDrawer> createState() => _BottomSheetDrawerState();
}

class _BottomSheetDrawerState extends State<BottomSheetDrawer> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 319,
              width: 339,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: const Offset(0, 5))
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 201, 201, 201),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const SizedBox(height: 5),
                  ),
                  /**const SizedBox(
                    height: 10,
                    child: Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Colors.black,
                    ),
                  ),
                  */
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 274,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFF7E5DF6),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Income(credit)',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFF1D9394),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                            ),
                            child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Expense(debit)',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    width: 230,
                    child: TextField(
                      scrollPadding: EdgeInsets.all(5),
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        //labelText: 'Password', // Optional label text
                        hintText: 'Project name',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Define the color of the underline
                        ),
                      ),
                    ),
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          child: TextField(
                            scrollPadding: EdgeInsets.all(5),
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              hintText: 'Name',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors
                                        .grey), // Define the color of the underline
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 80,
                          child: TextField(
                            scrollPadding: EdgeInsets.all(5),
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              hintText: 'Amount',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors
                                        .grey), // Define the color of the underline
                              ),
                            ),
                          ),
                        ),
                      ]),
                  const SizedBox(
                    width: 250,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      scrollPadding: EdgeInsets.all(5),
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                        hintText: 'Description',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Define the color of the underline
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFF4F4F)),
                        child: const SizedBox(
                          child: Text('Cancel',style: TextStyle(color: Colors.white),),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF00843D),
                        ),
                        child: const SizedBox(
                          child: Text('Submit',style: TextStyle(color: Colors.white),),
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    child: const SizedBox(width: ,),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            );
          },
        );
      },
      backgroundColor: const Color.fromARGB(255, 0x3B, 0x9B, 0x67),
      child: const Icon(Icons.add),
    );
  }
}

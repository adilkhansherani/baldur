import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

int _selectedIndex = 0;

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key,required this.currentIndex,required this.onTap});

  final int currentIndex ;
  final Function(int val) onTap;

  @override
  // ignore: no_logic_in_create_state
  State<BottomNavigator> createState() => _BottomNavigatorState(currentIndex: currentIndex,onTabTapped: onTap);
}

class _BottomNavigatorState extends State<BottomNavigator> {

  _BottomNavigatorState({
    required this.currentIndex,
    required this.onTabTapped,
  });

  int currentIndex=0;
  final Function(int val) onTabTapped;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: const Offset(0, 5))
        ],
      ),
      child: BottomAppBar(
        color: const Color.fromARGB(255, 0x3B, 0x9B, 0x67),
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              //: Icons.home_filled,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory), //_selectedIndex == 1
              //? SvgPicture.asset('lib/svgs/directory_colored.svg'):
              //SvgPicture.asset('lib/svgs/directory.svg'),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note), //_selectedIndex == 2
              //? SvgPicture.asset('lib/svgs/quotation_colored.svg'):
              //SvgPicture.asset('lib/svgs/quotation.svg'),
              label: 'Quotation',
              
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics), //_selectedIndex == 3
              //? SvgPicture.asset('lib/svgs/analytics_colored.svg')
              //: SvgPicture.asset('lib/svgs/analytics.svg'),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 136, 200, 253),
          unselectedItemColor: Colors.white,
          onTap: onTabTapped,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showUnselectedLabels: true,
          elevation: 0,
        ),
      ),
    );
  }
}

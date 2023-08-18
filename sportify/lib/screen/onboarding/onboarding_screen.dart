import 'package:flutter/material.dart';
import 'package:sportify/screen/home/home_page.dart';
import 'package:sportify/screen/home/library.dart';
import 'package:sportify/screen/home/search.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var _selectedPageNumber = 0;

  List<Widget> displayWidgets = [
    HomePage(),
    Search(),
    Library(),
    // ProfileNavigationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: displayWidgets[_selectedPageNumber],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_add,
                color: Colors.black,
              ),
              label: 'Library'),
        ],
        selectedIconTheme: const IconThemeData(color: Colors.green),
        onTap: (index) {
          setState(() {
            _selectedPageNumber = index;
          });
        },
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';
import 'package:spotify/view/tabs/home/home_page.dart';
import 'package:spotify/view/tabs/more/more_page.dart';
import 'package:spotify/view/tabs/search/search_page.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;
  final List _screen = [const HomePage(), const SearchPage(), const MorePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _screen[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorConstants.primaryColor,
        unselectedItemColor: Colors.white,
        enableFeedback: true,
        currentIndex: _selectedIndex,
        onTap: ((index) {
          setState(() {
            _selectedIndex = index;
          });
        }),
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            activeIcon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            activeIcon: Icon(Icons.more_horiz),
            label: '',
          ),
        ],
      ),
    );
  }
}

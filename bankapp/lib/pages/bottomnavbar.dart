import 'package:bankapp/colors/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
     elevation: 0,
    backgroundColor: ColorConstants.background,
  selectedItemColor: ColorConstants.button,
     unselectedItemColor: ColorConstants.silenttextcolor,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.wallet), label: ' My Card'),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'statistics',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],);
 }}

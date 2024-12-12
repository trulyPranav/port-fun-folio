import 'package:flutter/material.dart';
import 'package:prnvfolio_flutter/components/navbar_components/navbaritem.dart';

class NavigationDrawerMain extends StatelessWidget {
  const NavigationDrawerMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),          
        NavBarItem(title: "GitHub"),
        SizedBox(height: 20),
        NavBarItem(title: "Resume"),
        SizedBox(height: 20),
        NavBarItem(title: "Projects"),
        SizedBox(height: 20),
        NavBarItem(title: "About"),
        SizedBox(height: 20),
        NavBarItem(title: "Connect"),
        SizedBox(height: 20),
      ],
    );
  }
}
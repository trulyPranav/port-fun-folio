import 'package:flutter/material.dart';
import 'package:prnvfolio_flutter/screens/navbar/navbar_desktop.dart';
import 'package:prnvfolio_flutter/screens/navbar/navbar_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context){
        return const NavbarDesktop();
      },
      tablet: (BuildContext context){
        return const NavbarDesktop();
      },
      mobile: (BuildContext context){
        return const NavBarMobile();
      },
    );
  }
}
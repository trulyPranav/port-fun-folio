import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prnvfolio_flutter/components/navbar_components/navbaritem.dart';

class NavbarDesktop extends StatefulWidget {
  const NavbarDesktop({super.key});

  @override
  State<NavbarDesktop> createState() => _NavBarState();
}

class _NavBarState extends State<NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 10,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "~ Pranav M",
            style: GoogleFonts.iceberg(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 32
            ),
          ),
          const Row(
            children: [
              NavBarItem(title: "GitHub"),
              SizedBox(width: 16),
              NavBarItem(title: "Resume"),
              SizedBox(width: 16),
              NavBarItem(title: "Projects"),
              SizedBox(width: 16),
              NavBarItem(title: "About"),
              SizedBox(width: 16),
              NavBarItem(title: "Connect"),
              SizedBox(width: 16),
            ],
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prnvfolio_flutter/components/navbar_components/navbaritem.dart';

class NavBarMobile extends StatefulWidget {
  const NavBarMobile({super.key});

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
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
          IconButton(
            icon: const Icon(
              Icons.menu
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          )
        ],
      ),
    );
  }
}
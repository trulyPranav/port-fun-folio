import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
              _NavBarItem(title: "GitHub"),
              SizedBox(width: 16),
              _NavBarItem(title: "Resume"),
              SizedBox(width: 16),
              _NavBarItem(title: "Projects"),
              SizedBox(width: 16),
              _NavBarItem(title: "About"),
              SizedBox(width: 16),
              _NavBarItem(title: "Connect"),
              SizedBox(width: 16),
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.outfit(
        color: Colors.black,
        fontSize: 20
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  const DrawerItem({
    required this.title,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.outfit(
        color: Colors.black,
        fontSize: 16
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverlayText extends StatelessWidget {
  final double top;
  final double left;
  final String mainText;
  const OverlayText({
    required this.top,
    required this.left,
    required this.mainText,
    super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height,
      width: screenSize.width,
      child: Stack(
        children: [
          _MainText(
            top: top,
            left: left,
            text: mainText
          ),
        ],
      ),
    );
  }
}

class _MainText extends StatelessWidget {
  final double top;
  final double left;
  final String text;
  const _MainText({
    required this.top,
    required this.left,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Text(
        text,
        style: GoogleFonts.shojumaru(
          fontSize: 200,
          fontWeight: FontWeight.w900,
          color: Colors.white
        ),
      )
    );
  }
}
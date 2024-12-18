import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';

class ParallaxRainWidget extends StatelessWidget {
  final double width;
  final double height;
  const ParallaxRainWidget({
    required this.height,
    required this.width,
    super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ParallaxRain(
        dropColors: const [
        Colors.red,
        Colors.green,
        Colors.blue,
        Colors.yellow,
        Colors.brown,
        Colors.blueGrey
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:prnvfolio_flutter/components/home_initial.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height * 2) + 140,
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
            ),
            // Objective 1: Need to convert to ListView and build some kind of parallax on scroll lol
            const HomeInitialContainer(),
          ],
        ),
      ),
    );
  }
}

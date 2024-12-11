import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parallax_rain/parallax_rain.dart';
import 'package:typewritertext/typewritertext.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController _arrowFadeController;
  late Animation<double> _arrowFadeAnimation;
  bool _showScrollText = false;

  @override
  void initState() {
    super.initState();
    
    // Initialize the animation controller for the fade effect
    _arrowFadeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // Create a fade-in animation
    _arrowFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _arrowFadeController, curve: Curves.easeIn),
    );

    // Trigger the fade-in after a delay to sync with the typewriter animation
    Future.delayed(const Duration(milliseconds: 15000), () {
      _arrowFadeController.forward();
    });

    // Show the "Scroll..." text after a delay
    Future.delayed(const Duration(milliseconds: 16000), () {
      setState(() {
        _showScrollText = true;  // Update state to show the "Scroll..." text
      });
    });
  }

  @override
  void dispose() {
    _arrowFadeController.dispose();
    super.dispose();
  }

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
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  height: MediaQuery.of(context).size.height - 80,
                  margin: const EdgeInsets.all(50.00),
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TypeWriter.text(
                        "Finally!?\nYou've Reached! 🤔\n\nLet me guide you through...",
                        maintainSize: true,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.specialElite(
                          color: Colors.white,
                          fontSize: 32,
                        ),
                        duration: const Duration(milliseconds: 200),
                      ),
                      const SizedBox(height: 130),
                      FadeTransition(
                        opacity: _arrowFadeAnimation,
                        child: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        child: _showScrollText ?
                          TypeWriter.text(
                            "Scroll...  ",
                            maintainSize: true,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.specialElite(
                              color: Colors.white,
                            ),
                            duration: const Duration(milliseconds: 200),
                          ) : Container(margin: const EdgeInsets.all(7) ,child: const Text("            "))
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  height: MediaQuery.of(context).size.height - 80,
                  margin: const EdgeInsets.all(50.00),
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

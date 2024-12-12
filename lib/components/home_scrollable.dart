import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HomeScrollable extends StatefulWidget {
  const HomeScrollable({super.key});

  @override
  State<HomeScrollable> createState() => _HomeScrollableState();
}

class _HomeScrollableState extends State<HomeScrollable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height-178,
      margin: const EdgeInsets.all(50.00),
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                DefaultTextStyle(
                  style: GoogleFonts.racingSansOne(
                    color: Colors.white,
                    fontSize: 32
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText("Hey! I'm Pranav!")
                    ],
                    isRepeatingAnimation: false,
                  )
                ),

                Row(
                  children: [
                    DefaultTextStyle(
                      style: GoogleFonts.racingSansOne(
                        color: Colors.white,
                        fontSize: 32                    
                      ),
                      child: const Text(
                        "I'm a "
                      ) 
                    ),
                    DefaultTextStyle(
                      style: GoogleFonts.racingSansOne(
                        color: Colors.white,
                        fontSize: 32                    
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText("Flutter"),
                          TypewriterAnimatedText("Python"),
                          TypewriterAnimatedText("DevOps"),                                                    
                        ],
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        pause: Durations.medium1,
                      )
                    ),
                  ],
                )
              ],
            ),
            const Column(
              children: [
        
              ],
            )
          ],
        ),
      ),     
    );
  }
}
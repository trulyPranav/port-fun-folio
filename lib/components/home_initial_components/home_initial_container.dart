import 'package:flutter/material.dart';

class HomeInitialContainer extends StatefulWidget {
  const HomeInitialContainer({super.key});

  @override
  State<HomeInitialContainer> createState() => _HomeInitialContainerState();
}

class _HomeInitialContainerState extends State<HomeInitialContainer> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      height: MediaQuery.of(context).size.height - 80,
      margin: const EdgeInsets.all(50.00),
      color: Colors.black,
    );
  }
}
import 'package:flutter/material.dart';

class Willbeback extends StatefulWidget {
  const Willbeback({super.key});
  @override
  State<Willbeback> createState() => _WillbebackState();
}

class _WillbebackState extends State<Willbeback> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Row(), Text("We Will Be back soon")],
        ),
      ]),
    );
  }
}

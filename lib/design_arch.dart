import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignArch extends StatefulWidget {
  const DesignArch({super.key});

  @override
  State<DesignArch> createState() => _DesignArchState();
}

class _DesignArchState extends State<DesignArch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Work towards your Satisfaction:",
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          Padding(padding: EdgeInsets.all(16)),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width *
                    0.9, // 90% of screen width
              ),
              child: Text(
                "we are committed to delivering exceptional results from initial design to final implementation. Our process begins with a detailed consultation to understand your vision, followed by iterative design phases to ensure you are completely satisfied with the outcome. We provide transparent and competitive quotations for all components, ensuring no hidden costs. Our commitment extends beyond the completion of your project; we offer lifetime support to address any future needs or modifications. With a focus on precision, we guarantee that every design is executed with the utmost accuracy, delivering a flawless finish that meets your exact specifications.",
                style: GoogleFonts.lato(),
                overflow:
                    TextOverflow.visible, // Ensure text is visible and wraps
                softWrap: true, // Allow text to wrap
              ),
            )
          ]),
        ],
      ),
    );
  }
}

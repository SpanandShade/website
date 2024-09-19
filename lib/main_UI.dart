// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spanandshade/contact.dart';
import 'package:spanandshade/design_arch.dart';
import 'package:spanandshade/home.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class MainUI extends StatefulWidget {
  const MainUI({super.key});

  @override
  State<MainUI> createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Image.asset("logo.png")),
          title: Text(
            "Span And Shade Architects",
            style: GoogleFonts.lato(),
          ),
          centerTitle: false,
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Home(),
              DesignArch(),
              Contact(),
            ],
          ),
        ),
        bottomNavigationBar: const Padding(
          padding: const EdgeInsets.all(8.0),
          child: const ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            ),
            child: BottomAppBar(
              color: Color.fromARGB(255, 97, 91, 98),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Span and Shade Architects Pvt.ltd',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ),
        ));
  }
}

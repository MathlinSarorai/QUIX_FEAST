// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './mainpage.dart';
import './Nonveg.dart';

class Textbody extends StatefulWidget {
  const Textbody({super.key});

  @override
  State<Textbody> createState() => _TextbodyState();
}

class _TextbodyState extends State<Textbody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.topCenter,
      child: Text("TODAY'S MENU",
          style: GoogleFonts.pacifico(
              textStyle: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.normal))),
    ));
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 400,
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: const Color.fromRGBO(193, 88, 183, 1),
              ),
              child: const Text("Special's",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 9,
                  ),
                  textAlign: TextAlign.center),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: const Color.fromRGBO(193, 88, 183, 1),
              ),
              child: const Text("Non-veg",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 9,
                  ),
                  textAlign: TextAlign.center),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Nonveg()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: const Color.fromRGBO(193, 88, 183, 1),
              ),
              child: const Text("Veg",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 9,
                  ),
                  textAlign: TextAlign.center),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              style: ElevatedButton.styleFrom(
                elevation: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: const Color.fromRGBO(193, 88, 183, 1),
              ),
              child: const Text("Favourites",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 9,
                  ),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    ));
  }
}

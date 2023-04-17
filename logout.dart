import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:quix_app/login.dart';
import 'package:quix_app/mainpage.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
              );
            },
          ),
          backgroundColor: const Color.fromRGBO(116, 57, 110, 1),
          title: Title(
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Text("Quix Feast - Canteen App")),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 40, 30),
          child: ListView(
            children: [
              Text(
                "Are you sure you want to exit?",
                textAlign: TextAlign.center,
                style: GoogleFonts.dongle(
                  textStyle: Theme.of(context).textTheme.labelSmall,
                  fontSize: 35,
                  color: Color.fromRGBO(116, 57, 110, 1),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                style: ElevatedButton.styleFrom(
                  elevation: 50,
                  padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: const Color.fromRGBO(193, 88, 183, 1),
                ),
                child: const Text("Yes",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 9,
                    ),
                    textAlign: TextAlign.center),
              )
            ],
          ),
        ));
  }
}

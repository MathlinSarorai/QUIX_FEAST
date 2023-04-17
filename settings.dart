import 'package:flutter/material.dart';
import './mainpage.dart';
import './logout.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(116, 57, 110, 1),
          title: Title(
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Text("Quix Feast - Canteen App")),
        ),
        body: Align(
            child: Column(children: [
          Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Settings",
                textAlign: TextAlign.center,
                style: GoogleFonts.dongle(
                  textStyle: Theme.of(context).textTheme.labelSmall,
                  fontSize: 40,
                  color: Color.fromRGBO(116, 57, 110, 1),
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              )),
          Container(
            alignment: Alignment.topLeft,
          ),
          Container(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      height: 400,
                      width: 400,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(10),
                                elevation: 50,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor:
                                    const Color.fromRGBO(193, 88, 183, 1),
                              ),
                              child: const Text("History",
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
                                backgroundColor:
                                    const Color.fromRGBO(193, 88, 183, 1),
                              ),
                              child: const Text("Wallet",
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
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Logout()));
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 50,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor:
                                    const Color.fromRGBO(193, 88, 183, 1),
                              ),
                              child: const Text("Logout",
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
                                padding: const EdgeInsets.all(10),
                                elevation: 50,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor:
                                    const Color.fromRGBO(193, 88, 183, 1),
                              ),
                              child: const Text("About",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 9,
                                  ),
                                  textAlign: TextAlign.center),
                            ),
                          ]))))
        ])));
  }
}

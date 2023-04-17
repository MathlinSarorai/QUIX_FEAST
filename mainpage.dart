import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Menu.dart';
import 'settings.dart';
import './Nonveg.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> page = [
    Padding(
      padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
      child: Align(
          alignment: Alignment.topCenter,
          child: Text("Notifications",
              textAlign: TextAlign.center,
              style: GoogleFonts.dongle(
                fontSize: 40,
                color: Color.fromRGBO(116, 57, 110, 1),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ))),
    ),
    const Menu(),
    Padding(
        padding: EdgeInsets.all(30),
        child: Align(
          alignment: Alignment.topCenter,
          child: Text("Your Orders",
              style: GoogleFonts.dongle(
                fontSize: 40,
                color: Color.fromRGBO(116, 57, 110, 1),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              )),
        )),
  ];

  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(116, 57, 110, 1),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
            );
          },
        ),
        centerTitle: true,
        title: const Text('Quix Feast - Canteen App'),
      ),
      body: page[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(116, 57, 110, 1),
        elevation: 10,
        selectedItemColor: const Color.fromRGBO(205, 174, 201, 1),
        selectedLabelStyle: const TextStyle(
            color: Color.fromRGBO(116, 57, 110, 1), fontSize: 10),
        currentIndex: selectedindex,
        selectedIconTheme: const IconThemeData(
          color: Color.fromRGBO(205, 174, 201, 1),
        ),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_menu,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Your Orders',
          ),
        ],
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
      ),
    );
  }
}

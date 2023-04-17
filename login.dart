// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './mainpage.dart';

const List<String> _choices = [
  "Please select your residence",
  "Hosteller",
  "Dayschollar",
  "Staff"
];
String dropdownValue = _choices.first;

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "QUIX FEAST LOG IN ",
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(116, 57, 110, 1),
            title: const Text(
              "Quix Feast- The Canteen App ",
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          body: Loginpagebody(),
        ));
  }
}

class Loginpagebody extends StatefulWidget {
  @override
  State<Loginpagebody> createState() => _LoginpagebodyState();
}

class _LoginpagebodyState extends State<Loginpagebody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: Image(
              image: AssetImage(
                'images/quix.png',
              ),
              width: 60,
              height: 60,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Text(
              'Log in',
              style: GoogleFonts.dongle(
                textStyle: Theme.of(context).textTheme.labelSmall,
                fontSize: 40,
                color: Color.fromRGBO(116, 57, 110, 1),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Registration/Staff Number',
                  ))),
          Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Align(
                  alignment: Alignment.center,
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ))),
          Center(
              child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(
              Icons.info_outline_rounded,
            ),
            elevation: 11,
            style:
                TextStyle(color: Color.fromRGBO(116, 57, 110, 1), fontSize: 20),
            dropdownColor: const Color.fromRGBO(255, 255, 255, 1),
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            items: _choices.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child: const Text(
              'Forgot Password',
              style: TextStyle(color: Color.fromRGBO(116, 57, 110, 1)),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(193, 88, 183, 1),
                padding: const EdgeInsets.all(10),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              child: const Text('Login'),
            ),
          ),
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Nonveg extends StatelessWidget {
  const Nonveg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(30),
            child: Align(
                alignment: Alignment.center,
                child: Column(children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Chicken 65",
                        style: TextStyle(
                            fontSize: 10,
                            color: Color.fromRGBO(255, 255, 255, 1)),
                      ))
                ]))));
  }
}

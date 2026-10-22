import 'package:flutter/material.dart';

class Expandedwidget extends StatelessWidget {
  const Expandedwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 50, color: const Color.fromARGB(255, 3, 165, 247)),

        Expanded(
          flex: 1,
          child: Container(
            height: 500,
            color: const Color.fromARGB(255, 4, 8, 235),
          ),
        ),
         Expanded(
          flex: 1,
          child: Container(
            height: 350,
            color: const Color.fromARGB(255, 40, 155, 248),
          ),
        ),
         Expanded(
          flex: 1,
          child: Container(
            height: 200,
            color: const Color.fromARGB(255, 216, 216, 218),
          ),
        )
      ],
    );
  }
}
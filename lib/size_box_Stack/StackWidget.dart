import 'package:flutter/material.dart';

class Stackwidget extends StatelessWidget {
  const Stackwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 100, height: 150, color: const Color.fromARGB(255, 2, 135, 243),),
        Positioned(
          bottom: 0,
          right: 10,

          child: Icon(Icons.favorite, color: const Color.fromARGB(255, 233, 234, 236)),
        ),
        Positioned(top: 5, left: 10, child: Text("Label")),
        Positioned(
          right: 25,
          top: 25,
          left: 25,
          child: Container(
            color: const Color.fromARGB(255, 81, 141, 245),
            width: 100,
            height: 100),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(right: 16, left: 16),
      color: const Color.fromARGB(255, 9, 5, 241),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Ini Judul",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
          Container(height: 40, width: 520, color: Colors.white,),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Ini Judul",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 160, width: 220, color: const Color.fromARGB(255, 6, 50, 247),),
              Container(height: 160, width: 220, color: const Color.fromARGB(255, 7, 183, 236),)
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 160, width: 220, color: const Color.fromARGB(255, 6, 169, 245),),
              Container(height: 160, width: 220, color: const Color.fromARGB(255, 40, 69, 231),)
            ],
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(height: 160, width: 220, color: Colors.white,),
              Container(height: 160, width: 220, color: const Color.fromARGB(255, 36, 119, 228),)
            ],
          ),
        ]
      ),
      );
  }
}
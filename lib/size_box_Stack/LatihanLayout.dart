import 'package:flutter/material.dart';

class Latihanlayout extends StatelessWidget {
  const Latihanlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 72,
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 3, 149, 247),
              borderRadius: BorderRadius.circular(8),
             boxShadow: [BoxShadow(color: Colors.black, blurRadius: 6)]
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.account_circle_sharp, size: 50, color: Colors.blueGrey
                  ),
                ),
                SizedBox(width: 12,),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("M Gumilang"),
                    SizedBox(height: 5),
                    Text("XII RPL 3"),
                  ],
                ),
                ),
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.notifications, size: 35, color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 6)

      ],
    );
  }
}
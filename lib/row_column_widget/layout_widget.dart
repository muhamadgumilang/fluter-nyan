import 'package:flutter/material.dart';

class LayoutRowColumn extends StatelessWidget {
  const LayoutRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center( child: Container(
      width:  double.infinity,
      height: 100,
      color: Colors.blueAccent,
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.call, size: 40), Text("call")],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.share, size: 40), Text("Share")],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.navigation, size: 40), Text("Navigate")],
          )
        ],
      ),
    ), 
    );
  }
}
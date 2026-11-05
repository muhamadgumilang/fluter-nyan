import 'package:flutter/material.dart';

class ListBasic extends StatelessWidget {
  const ListBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 100,
          color: Colors.amberAccent,
          child: Center(child: Text("Golongan Karya")),
          
        ),
        Container(
          width: 100,
          color:  Colors.redAccent,
          child: Center(child: Text("PDI Perjuangan")),
        ),
        Container(
          width: 100,
          color: Colors.blueAccent,
          child: Center(child: Text("Demokrat")),
        ),
        Container(
          width: 100,
          color: Colors.green,
          child: Center(child: Text("kratom")),
        )
      ],
    );
  }
}
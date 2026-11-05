import 'package:flutter/material.dart';

class ListSeparatedwidget extends StatelessWidget {
   ListSeparatedwidget({super.key});

  var partai = ["Golongan Karya", "PDIP", "Demokrat", "PKB"];
  var partaiColour = [Colors.amberAccent, Colors.redAccent, Colors.blueAccent, Colors.green];


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: partai.length,
      itemBuilder: (context, index) {
        return Container(
        height: 400,
        color: partaiColour[index],
        child: Center(child: Text(partai[index].toString())),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.black,
          height: 30,
          radius: BorderRadius.circular(12),
          indent: 90,
          endIndent: 90,
        );
      }
    );
  }
}
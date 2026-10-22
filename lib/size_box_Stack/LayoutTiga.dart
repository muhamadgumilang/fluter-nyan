import 'package:flutter/material.dart';

class LayoutTiga extends StatelessWidget {
  const LayoutTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 80,
              color: Colors.blue[100],
              alignment: Alignment.center,
              child: Text("Pemasukan"),
            ),
          ),
          SizedBox(width: 15,),
           Expanded(
            child: Container(
              height: 80,
              color: const Color.fromARGB(255, 82, 161, 226),
              alignment: Alignment.center,
              child: Text("Pengeluaran"),
            ),
          ),
          SizedBox(width: 15,),
           Expanded(
            child: Container(
              height: 80,
              color: const Color.fromARGB(255, 4, 135, 241),
              alignment: Alignment.center,
              child: Text("Saldo"),
            ),
          )
        ],
      ),
    );
  }
}
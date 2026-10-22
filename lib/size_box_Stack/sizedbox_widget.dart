import 'package:flutter/material.dart';

class SizedboxWidget extends StatelessWidget {
  const SizedboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Baris Kesatu"),
          SizedBox(height: 15,),
          Text("Baris Keduaa"),
          SizedBox(height: 15,),

          SizedBox(
            width: 250,
            height: 25,
            child: ElevatedButton(
              onPressed: () {},
               child: Text("tombol")),
          )
        ],
      ),
    );
  }
}
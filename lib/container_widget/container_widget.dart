import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      height: 400,
      margin:EdgeInsets.all(10),
      padding:EdgeInsets.only(top:10),
      decoration: BoxDecoration(
        color : Colors.blueAccent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color:Colors.black, width: 2),
        gradient:LinearGradient(
          colors:[
           const Color.fromARGB(26, 70, 111, 243),
            const Color.fromARGB(255, 84, 174, 219),
            Colors.blue],
             begin: Alignment.topRight,
              end: Alignment.bottomLeft
              ),
              image:DecorationImage(image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHHwyHncXtzqbCMJVeLf6NK5zNo6d64NZNvMzaqZoJrA&s=10"
                ),
                fit: BoxFit.fitWidth
                ),
      ),
      transform: Matrix4.rotationX(0.2),
      child: Text("Bandung Lautan Api"),
    );
  }
}
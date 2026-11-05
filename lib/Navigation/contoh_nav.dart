import 'package:flutter/material.dart';
import 'package:flutter_gumilang/Navigation/about_page.dart';

class Contoh extends StatelessWidget {
  const Contoh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
              MaterialPageRoute(
                builder: (context) {
                  return AboutPage(
                    nama: "Muhamad Gumilang",
                    kelas: "XII RPL TILOE",
                    umur: 17,
                  );
                }
                ),
                );
            },
            child: Text("pindah halaman about")
            ),
              ElevatedButton(
                  onPressed: () {
                 Navigator.pushNamed(context, '/grid');
                 },
                  child: Text("Latihan Grid"),
               ),
                ElevatedButton(
                  onPressed: () {
                 Navigator.pushNamed(context, '/list');
                 },
                  child: Text("Latihan list"),
               ),
               ElevatedButton(
                  onPressed: () {
                 Navigator.pushNamed(context, '/latihanlist');
                 },
                  child: Text("Latihan List"),
               ),
               ElevatedButton(
                  onPressed: () {
                 Navigator.pushNamed(context, '/latihanrowcolumn');
                 },
                  child: Text("Latihan Row/Column"),
               ),
               ElevatedButton(
                  onPressed: () {
                 Navigator.pushNamed(context, '/latihansizebox');
                 },
                  child: Text("Latihan Sizebox"),
               ),
               
               
          ],
        ),
       
      ),
    );
  }
}
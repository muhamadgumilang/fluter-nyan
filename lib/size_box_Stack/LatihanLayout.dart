import 'package:flutter/material.dart';

class LatihanLayout extends StatelessWidget {
  const LatihanLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            height: 75,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color:  const Color.fromARGB(255, 8, 96, 228),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [BoxShadow(color: Colors.black, blurRadius: 6)],
            ),
        
            child: Row(
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKHstdvEePqce-j1-RYydquKOd2SYP90ePbi375qVFMw&s=10"),
                  ),
                ),
        
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhamad Gumilang",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                      SizedBox(height: 5),
                      Text("XII RPL TILOE",
                      style: TextStyle(
                        fontStyle: FontStyle.italic
                      ),)
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.notifications, size: 35, color: Colors.white),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            Center(
              child: Container(
        height: 135,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [Color.fromARGB(255, 81, 143, 249), Colors.blue] ),          borderRadius: BorderRadius.circular(8),
        ),

        child: Row(
          children: [
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 10,
                    width: 100,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [Colors.blue, Color.fromARGB(255, 147, 185, 251)] ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("TETAP SEMANGAT!",
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.white
                  ),
                  ),
                  alignment: Alignment.center,
                  ),
                  SizedBox(height: 15),
                  Text("Belajar Flutter!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),),
                  SizedBox(height: 10),
                  Text("Bangun Aplikasi Mulai Dari Fundamental",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 10,
                    color: Colors.white,
                  ),),
                  SizedBox(height: 15),
                  Container(
                    height: 18,
                    width: 90,
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text("Mulai Belajar",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white
                  ),
                  ),
                  alignment: Alignment.center,
                  )
                ],
              ),
            )
          ],
        ),
      ),
            ),
           Row(
              children: [
                SizedBox(width: 20),
                Text("Skill Keahlian:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 3, 98, 223)
                ),)
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5),
                    image: DecorationImage(image: NetworkImage('https://cdn.brandfetch.io/domain/laravel.com/fallback/lettermark/theme/dark/h/400/w/400/icon?c=1bfwsmEH20zzEfSNTed'),
                    fit: BoxFit.cover)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                      right: 6, top: 6,
                        child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        ),
                      )),

                      Positioned(
                      right: 3, top: 2,
                      child: Icon(Icons.check_circle, color: Colors.blue)),

                      Positioned(
                      right: 5, bottom: 3,
                      child: Text("Laravel",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),))
                    ],
                  )
                ),
                Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5),
                    image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3KRF2KUVqHuSh4jJccD2jSJ7hAgRDt0AN9_kAQeDzZA&s=10'),
                    fit: BoxFit.cover)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                      right: 6, top: 6,
                        child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        ),
                      )),

                      Positioned(
                      right: 3, top: 2,
                      child: Icon(Icons.check_circle, color: Colors.blue)),

                      Positioned(
                      right: 5, bottom: 3,
                      child: Text("Tailwind",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),))
                    ],
                  )
                ),
                Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.5),
                    image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3B7lR_13JZiYs545iZdVin_XGI2A2J72pI4T2azHfP7OI9CYOxs9K2cbf&s=10'),
                    fit: BoxFit.cover)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                      right: 6, top: 6,
                        child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        ),
                      )),

                      Positioned(
                      right: 3, top: 2,
                      child: Icon(Icons.check_circle, color: Colors.blue)),

                      Positioned(
                      right: 5, bottom: 3,
                      child: Text("Flutter",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),))
                    ],
                  )
                ),
                
              ],
            )
            
          ],
        )
      ],
    );
  }
}
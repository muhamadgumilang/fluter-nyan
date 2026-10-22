import 'package:flutter/material.dart';

class LatihanContainer extends StatelessWidget {
  const LatihanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      margin:EdgeInsets.all(50),
      padding:EdgeInsets.only(top:15, right:15, left: 15, bottom: 15),
      height: double.infinity,
       alignment: Alignment. bottomLeft,
      
      decoration: BoxDecoration(
       color : const Color.fromARGB(3, 223, 217, 217),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color:Colors.black, width: 2),
      image: DecorationImage(image: NetworkImage(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2a5CcPF-fc5JgviCyFCafOVWCCWMmruAimHGha1McE5LqWZq19n0WXutx&s=10"
      ),
       fit: BoxFit.fill
      ),
      ),
        child: Text(
          textAlign: TextAlign.justify,
          " Tempat peternakan ayam Bangkok adalah fasilitas atau area khusus yang digunakan untuk mengembangbiakkan, merawat, dan memelihara ayam Bangkok (ayam laga asal Thailand) dari usia anakan hingga dewasa.\n"
      
                            "Karakteristik dan Jenis Kandang di Peternakan\n"

                            "Peternakan ayam Bangkok umumnya tidak berupa satu kandang besar terbuka seperti ayam potong, melainkan dibagi menjadi beberapa jenis kandang spesifik:\n"
                            "• Kandang Box / Postal: Digunakan khusus untuk anak ayam (bibit) yang baru menetas hingga usia beberapa minggu, biasanya dilengkapi penghangat lampu.\n"
                            "• Kandang Individu / Koloni: Tempat ayam jantan dan betina dewasa dipisah atau dijaga agar tidak saling merusak bulu dan menghindari stres.\n"
                            "• Kandang Umbaran (Kandang Kliter): Kandang berbentuk melingkar (dari kayu atau besi) yang diletakkan di tanah agar ayam jago bisa leluasa bergerak, melatih otot, dan mendapatkan sinar matahari pagi.\n",
        style: TextStyle(
          backgroundColor: Colors.white,
          color: Colors.black,
          
        ),
       ),
    ) ;
  }
}
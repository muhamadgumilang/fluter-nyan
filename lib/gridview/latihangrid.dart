import 'package:flutter/material.dart';

class GridLatihanWidget extends StatelessWidget {
  GridLatihanWidget({super.key});

  final List<Map<String, dynamic>> kuliner = [
    {
      'nama': 'Lontong ',
      'harga': 25000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReJZsZowBojCDKpPucpa28wOF8wJprvslapakFlKly-g&s=10",
      'Khas': "Medan",
      'description' : 'Makanan khas Medan memang banyak yang mengoyak lidah dengan kenikmatannya. Apalagi menu lontong Medan. Potongan lontongnya yang empuk dipadukan dengan kuah cokelat kental yang gurih kaya akan rempah.'
    },
     {
      'nama': 'Soto ',
      'harga': 15000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKTL28SOLooc711wyxSL9T0ibLJsbtBpTLOF3UvcrAYg&s=10",
      'Khas': "Medan",
      'description' : 'Coto Makassar sudah populer di masyarakat. Kelezatan kuliner dengan kuah kaldu kental ini tak hanya difavoritkan oleh orang Makassar saja, tapi juga orang di luar etnis itu.'
    },
    {
      'nama': 'Rendang',
      'harga': 15000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWRDzsR-wBXOHzmZlyf8s2YhxttrMQDxJvpw5mT8AKMg&s=10",
      'Khas': "Minangkabau",
      'description' : 'Rendang adalah hidangan tradisional khas suku Minangkabau,  yang terbuat dari bahan dasar daging yang dimasak menggunakan santan kelapa dan aneka rempah-rempah.'
    },
     {
      'nama': 'Sate',
      'harga': 3000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvT717qJZBHmmRSlYh6al-sF3XotyQ6n-iM7OQBqM8Qg&s=10",
      'Khas': "Medan",
      'description' : 'Sate adalah makanan khas Indonesia yang terbuat dari potongan daging kecil-kecil yang ditusuk menggunakan lidi tulang daun kelapa atau bambu, kemudian dipanggang di atas bara arang kayu.'
    },
    {
      'nama': 'Nasi Uduk ',
      'harga': 10000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkVyI4lxRNYLfZRAI6ENyv9DLAzMCIjzXLJJlc3mQcaw&s=10",
      'Khas': "Betawi",
      'description' : 'Nasi uduk adalah makanan khas daerah Betawi (Jakarta),Hidangan ini merupakan perpaduan antara nasi lemak dari Malaka (budaya Melayu) dan sega gurih dari Jawa (pengaruh Kesultanan Mataram).'
    },
    {
      'nama': 'Serabi',
      'harga': 2500,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST0aO74QruQeXclPoHO6dqgRTkQvf2tI5I8OBDfePajQ&s=10",
      'Khas': "Jawa Tengah/Yogyakarta",
      'description' : 'Serabi (atau disebut juga surabi, srabi, atau sorabi) adalah kue tradisional khas Indonesia yang bentuknya mirip seperti pancake. '
    },
    {
      'nama': 'Nasi Kuning',
      'harga': 10000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSLGuepPmxcd0qNwCB7GtjiIFqzBBBiTUO07nBQ4vWaA&s=10",
      'Khas': "Pulau jawa",
      'description' : 'Nasi kuning adalah hidangan khas Indonesia yang terbuat dari beras yang dimasak bersama dengan kunyit, santan, serta berbagai rempah-rempah aromatik.'
    },
    {
      'nama': 'Kupat Tahu ',
      'harga': 10000,
      'imageUrl': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRn_LlRiMboXijDr6DVFiV7LhQZonOH5eAEmyqc7U3-A&s=10",
      'Khas': "Jawa Tengah",
      'description' : 'Kupat tahu adalah makanan tradisional khas Indonesia yang berbahan dasar potongan ketupat (atau lontong) dan tahu goreng.'
    },
   
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: kuliner.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3,
        childAspectRatio: 0.6,
      ),
      itemBuilder: (context, index) {
        final data = kuliner[index];

        return Card(
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(data['imageUrl']),
                  fit: BoxFit.cover
                  )
                ),
                
              ),
              
              SizedBox(height: 10),
              Text(
                data['nama'],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text("Rp . ${data['harga']}"),
              SizedBox(height: 4),
              Text("Khas : ${data['Khas']}"),
              SizedBox(height: 10),
              Text( data['description'],
              overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10, color: Colors.black),
              ),
            ],
          ),
        );
      },
    );
  }
}
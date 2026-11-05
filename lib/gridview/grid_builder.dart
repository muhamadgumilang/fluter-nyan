import 'package:flutter/material.dart';

class GridBuilderWidget extends StatelessWidget {
 GridBuilderWidget({super.key});

  final List<Map<String, dynamic>> produk = [
    {
      'nama' : 'Laptop',
      'harga' : 750000,
      'icon' : Icons.laptop,
      'warna' : Colors.blue,
    },
    {
      'nama' : 'SmartPhone',
      'harga' : 600000,
      'icon' : Icons.smartphone_outlined,
      'warna' : Colors.black,
      },
      {
      'nama' : 'Headphone',
      'harga' : 150000,
      'icon' : Icons.headphones,
      'warna' : Colors.orangeAccent,
      },
      {
      'nama' : 'Keyboard',
      'harga' : 750000,
      'icon' : Icons.keyboard,
      'warna' : Colors.deepPurpleAccent,
      },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body:  GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: produk.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              final data = produk[index];
        
              return Card(
                elevation: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(data['icon'], size: 60, color: data['warna']),
                    SizedBox(height: 10),
                    Text(
                      data['nama'],
                      style: TextStyle(fontSize: 24, fontWeight:.bold),
                    ),
                    Text("Rp. ${data['harga']}"),
                  ],
                ),
              );
            },
        ),
      
    );
  }
}
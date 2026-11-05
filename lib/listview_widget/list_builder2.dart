import 'package:flutter/material.dart';

class ListBuilder2 extends StatelessWidget {
  ListBuilder2({super.key});
  

  final List<Map<String, dynamic>> siswa = [
    {'nama': 'Abdul', 'kelas' : 'XII RPL 3', 'umur': 18},
    {'nama': 'Zaenal', 'kelas' : 'XII RPL 3', 'umur': 19},
    {'nama': 'Susi', 'kelas' : 'XII RPL 3', 'umur': 20},
    {'nama': 'Solihin', 'kelas' : 'XII RPL 3', 'umur': 21},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: siswa.length,
      itemBuilder: (context, index) {
        final data = siswa[index];
        return Card(
          margin: EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(child: Text(data['nama'][0])),
            title: Text(data['nama']),
            subtitle: Text(
              "${data['kelas']} - ${data['umur'].toString()} Tahun"
            ),
            trailing: Icon(Icons.arrow_forward_ios),
            ),
        );
      },
    );
  }
}
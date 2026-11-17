import 'package:flutter/material.dart';

class HasilBuku extends StatelessWidget {
  final String judulBuku,
      namaPenerbit,
      kategoriBuku,
      tahunTerbit,
      tanggalPeminjaman,
      tanggalPengembalian;

  const HasilBuku({
    super.key,
    required this.judulBuku,
    required this.namaPenerbit,
    required this.kategoriBuku,
    required this.tahunTerbit,
    required this.tanggalPeminjaman,
    required this.tanggalPengembalian,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil Pendaftaran')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Judul Buku: $judulBuku'),
            Text('Nama Penerbit: $namaPenerbit'),
            Text('Kategori Buku: $kategoriBuku'),
            Text('Tanggal Terbit: $tahunTerbit'),
            Text('Tanggal Peminjaman: $tanggalPeminjaman'),
            Text('Tanggal Pengembalian: $tanggalPengembalian'),
          ],
        ),
      ),
    );
  }
}

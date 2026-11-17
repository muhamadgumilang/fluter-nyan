import 'package:flutter/material.dart';
import 'package:flutter_gumilang/pages/perpus_output_page.dart';
import 'package:intl/intl.dart';

void main() => runApp(
  const MaterialApp(debugShowCheckedModeBanner: false, home: Perpustakaan()),
);

class Perpustakaan extends StatefulWidget {
  const Perpustakaan({super.key});

  @override
  State<Perpustakaan> createState() => _Perpustakaan();
}

class _Perpustakaan extends State<Perpustakaan> {
  final _formKey = GlobalKey<FormState>();

  final _judulBukuC = TextEditingController();
  final _namaPenerbitC = TextEditingController();
  final tahunTerbitC = TextEditingController();
  final _tanggalPeminjamanC = TextEditingController();
  final _tanggalPengembalianC = TextEditingController();

  String? _kategoriBuku;
  bool _setuju = false;

  final Color biru = const Color(0xFF315C9B);

  @override
  void dispose() {
    _judulBukuC.dispose();
    _namaPenerbitC.dispose();
    tahunTerbitC.dispose();
    _tanggalPeminjamanC.dispose();
    _tanggalPengembalianC.dispose();
    super.dispose();
  }

  void _kirim() {
    if (_formKey.currentState!.validate()) {
      if (!_setuju) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Kamu harus menyetujui tata tertib')),
        );
        return;
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => HasilBuku(
            judulBuku: _judulBukuC.text,
            namaPenerbit: _namaPenerbitC.text,
            kategoriBuku: _kategoriBuku!,
            tahunTerbit: tahunTerbitC.text,
            tanggalPeminjaman: _tanggalPeminjamanC.text,
            tanggalPengembalian: _tanggalPengembalianC.text,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text(
          'Perpustakaan',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: biru,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Icon(
            Icons.menu_book_rounded,
            size: 55,
            color: Color(0xFF315C9B),
          ),

          const SizedBox(height: 12),

          const Text(
            'Form Perpustakaan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Color(0xFF26354A),
            ),
          ),

          const SizedBox(height: 6),

          const Text(
            'Silakan lengkapi informasi buku berikut',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),

          const SizedBox(height: 25),

          Card(
            color: Colors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _judulBukuC,
                      decoration: InputDecoration(
                        labelText: 'Judul Buku',
                        prefixIcon: const Icon(Icons.book_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (v) => v == null || v.trim().isEmpty
                          ? 'Judul buku tidak boleh kosong'
                          : null,
                    ),

                    const SizedBox(height: 18),

                    TextFormField(
                      controller: _namaPenerbitC,
                      decoration: InputDecoration(
                        labelText: 'Nama Penerbit',
                        prefixIcon: const Icon(Icons.business_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (v) => v == null || v.trim().isEmpty
                          ? 'Nama penerbit tidak boleh kosong'
                          : null,
                    ),

                    const SizedBox(height: 18),

                    TextFormField(
                      controller: tahunTerbitC,
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: 'Tanggal Terbit',
                        prefixIcon: const Icon(Icons.calendar_today_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                        );

                        if (pickedDate != null) {
                          setState(() {
                            tahunTerbitC.text = DateFormat('yyyy-MM-dd')
                                .format(pickedDate);
                          });
                        }
                      },
                      validator: (v) => v == null || v.isEmpty
                          ? 'Tanggal terbit wajib diisi'
                          : null,
                    ),

                    const SizedBox(height: 18),

                    TextFormField(
                      controller: _tanggalPeminjamanC,
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: 'Tanggal Peminjaman',
                        prefixIcon: const Icon(Icons.event_available_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onTap: () async {
                        final pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100, 12, 31),
                        );

                        if (pickedDate != null) {
                          setState(() {
                            _tanggalPeminjamanC.text = DateFormat('yyyy-MM-dd')
                                .format(pickedDate);
                          });
                        }
                      },
                      validator: (v) => v == null || v.isEmpty
                          ? 'Tanggal peminjaman wajib diisi'
                          : null,
                    ),

                    const SizedBox(height: 18),

                    TextFormField(
                      controller: _tanggalPengembalianC,
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: 'Tanggal Pengembalian',
                        prefixIcon: const Icon(Icons.event_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onTap: () async {
                        final tanggalPeminjaman = DateTime.tryParse(
                          _tanggalPeminjamanC.text,
                        );
                        final firstDate = tanggalPeminjaman ?? DateTime.now();
                        final pickedDate = await showDatePicker(
                          context: context,
                          initialDate: firstDate,
                          firstDate: firstDate,
                          lastDate: DateTime(2100, 12, 31),
                        );

                        if (pickedDate != null) {
                          setState(() {
                            _tanggalPengembalianC.text = DateFormat(
                              'yyyy-MM-dd',
                            ).format(pickedDate);
                          });
                        }
                      },
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return 'Tanggal pengembalian wajib diisi';
                        }
                        final tanggalPeminjaman = DateTime.tryParse(
                          _tanggalPeminjamanC.text,
                        );
                        final tanggalPengembalian = DateTime.tryParse(v);
                        if (tanggalPeminjaman != null &&
                            tanggalPengembalian != null &&
                            tanggalPengembalian.isBefore(tanggalPeminjaman)) {
                          return 'Tanggal pengembalian tidak boleh lebih awal dari tanggal peminjaman';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 18),

                    DropdownButtonFormField<String>(
                      value: _kategoriBuku,
                      isExpanded: true,
                      decoration: InputDecoration(
                        labelText: 'Kategori Buku',
                        prefixIcon: const Icon(Icons.category_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      items: ['Komedi', 'Romance', 'Komik', 'Novel'].map((e) {
                        return DropdownMenuItem(value: e, child: Text(e));
                      }).toList(),
                      onChanged: (v) {
                        setState(() => _kategoriBuku = v);
                      },
                      validator: (v) =>
                          v == null ? 'Pilih kategori buku' : null,
                    ),

                    const SizedBox(height: 12),

                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      activeTrackColor: biru,
                      title: const Text(
                        'Persetujuan',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: const Text(
                        'Saya siap memenuhi semua ketentuan yang berlaku',
                        style: TextStyle(fontSize: 12),
                      ),
                      value: _setuju,
                      onChanged: (v) {
                        setState(() => _setuju = v);
                      },
                    ),

                    const SizedBox(height: 15),

                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: _kirim,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: biru,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Daftarkan Buku',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            '© 2026 Perpustakaan',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

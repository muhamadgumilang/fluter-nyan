import 'dart:async';
import 'dart:convert';

import 'package:flutter_gumilang/models/comments.dart';
import 'package:http/http.dart' as http;

import '../constants/comments_constants.dart';
import '../models/comments.dart';

class CommentsService {
  Future<List<Comments>> fetchComments () async {
    final url = Uri.parse(
      '${CommentsConstants.baseUrl}${CommentsConstants.commentsEndpoint}',
    );

    try {
      // 1) Minta data (maksimal tunggu 10 detik)
      final response = await http.get(url).timeout(const Duration(seconds: 10));

      // 2) Cek apakah berhasil (200 = OK)
      if (response.statusCode == 200) {
        // 3) Ubah teks JSON menjadi List
        final List data = jsonDecode(response.body);

        // 4) Bungkus tiap item menjadi objek Post
        return data.map((e) => Comments.fromJson(e)).toList();
      } else {
        throw Exception('Gagal memuat data (kode: ${response.statusCode})');
      }
    } on TimeoutException {
      throw Exception('Koneksi terlalu lama. Coba lagi.');
    }
  }
}
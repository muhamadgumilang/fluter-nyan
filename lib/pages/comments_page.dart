import 'package:flutter/material.dart';
import 'package:flutter_gumilang/models/comments.dart';
import 'package:flutter_gumilang/services/comments_services.dart';

import 'comments_detail_page.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  final CommentsService _comments = CommentsService();
  late Future<List<Comments>> _futureComments;

  @override
  void initState() {
    super.initState();
    _futureComments = _comments
        .fetchComments(); // dipanggil sekali saat layar dibuat
  }

  // Dipakai tombol refresh dan tombol "Coba lagi"
  void _reload() {
    setState(() {
      _futureComments = _comments.fetchComments();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Komentar'),
        actions: [
          IconButton(icon: const Icon(Icons.refresh), onPressed: _reload),
        ],
      ),
      body: FutureBuilder<List<Comments>>(
        future: _futureComments,
        builder: (context, snapshot) {
          // Kondisi 1: error
          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.wifi_off, size: 48),
                    const SizedBox(height: 12),
                    Text(
                      'Terjadi kesalahan:\n${snapshot.error}',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _reload,
                      child: const Text('Coba lagi'),
                    ),
                  ],
                ),
              ),
            );
          }

          // Kondisi 2: masih loading
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          // Kondisi 3: data siap
          final comments = snapshot.data!;

          if (comments.isEmpty) {
            return const Center(child: Text('Belum ada data'));
          }

          return ListView.builder(
            itemCount: comments.length,
            itemBuilder: (context, i) {
              final comment = comments[i];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  leading: CircleAvatar(child: Text('${comment.id}')),
                  title: Text(
                    comment.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(comment.email),
                      Text(
                        comment.body,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CommentsDetailPage(comments: comment),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

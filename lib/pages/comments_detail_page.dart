import 'package:flutter/material.dart';

import '../models/comments.dart';

class CommentsDetailPage extends StatelessWidget {
  final Comments comments;

  const CommentsDetailPage({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Comments #${comments.id}')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(comments.name, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 12),
            Text(comments.email),
            const SizedBox(height: 12),
            Text(comments.body),
            const SizedBox(height: 24),
            Text(
              'Dari post #${comments.postId}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

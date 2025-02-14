import 'package:flutter/material.dart';
import 'package:ttm01_flutter_dependency_injection/domain/entities/post.dart';

class DetailPage extends StatelessWidget {
  final Post post;
  const DetailPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Post Id : ${post.id}'),
            Text('Post Title : ${post.title}'),
            Text('Post Body : ${post.body}'),
          ],
        ),
      ),
    );
  }
}

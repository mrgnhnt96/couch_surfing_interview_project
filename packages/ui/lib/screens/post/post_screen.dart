import 'package:flutter/material.dart';

import 'package:interview_ui/screens/post/post_view.dart';

class PostScreen extends StatelessWidget {
  const PostScreen(this.id, {super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return const PostView();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_application/application.dart';
import 'package:interview_domain/domain.dart';
import 'package:interview_ui/screens/posts/posts.dart' as posts;
import 'package:interview_ui/shared/loading_indicator.dart';
import 'package:interview_ui/utils/date_time_extensions.dart';

part 'components/__comment.dart';
part 'components/__comments.dart';
part 'components/__post.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 8),
            _Post(),
            SizedBox(height: 16),
            Expanded(child: _Comments()),
          ],
        ),
      ),
    );
  }
}

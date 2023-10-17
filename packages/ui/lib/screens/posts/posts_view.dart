import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_application/application.dart';
import 'package:interview_domain/domain.dart';
import 'package:interview_ui/shared/loading_indicator.dart';
import 'package:interview_ui/utils/date_time_extensions.dart';

part 'components/__post.dart';
part 'components/__posts.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: const _Posts(),
    );
  }
}

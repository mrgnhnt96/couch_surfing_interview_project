import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_application/application.dart';

import 'package:interview_ui/screens/posts/posts_view.dart';
import 'package:interview_ui/src/injection.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PostsBloc>(),
      child: const PostsView(),
    );
  }
}

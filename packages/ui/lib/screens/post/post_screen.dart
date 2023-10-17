import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_application/application.dart';
import 'package:interview_ui/screens/post/post_view.dart';
import 'package:interview_ui/src/injection.dart';

class PostScreen extends StatelessWidget {
  const PostScreen(this.id, {super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PostBloc>()..events.fetch(id),
      child: const PostView(),
    );
  }
}

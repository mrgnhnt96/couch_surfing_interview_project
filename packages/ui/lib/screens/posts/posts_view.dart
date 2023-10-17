import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_application/application.dart';
import 'package:interview_domain/domain.dart';
import 'package:interview_ui/routes/app_paths.dart';
import 'package:interview_ui/shared/loading_indicator.dart';
import 'package:interview_ui/utils/date_time_extensions.dart';

part 'components/__post.dart';
part 'components/__posts.dart';
part 'components/__icon_count.dart';
part 'shared/shared.dart';

class PostsView extends StatelessWidget {
  const PostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
        actions: [
          IconButton(
            onPressed: () {
              context.push(Paths.user.path);
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: const _Posts(),
    );
  }
}

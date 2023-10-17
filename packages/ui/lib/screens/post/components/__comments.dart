part of '../post_view.dart';

class _Comments extends StatelessWidget {
  const _Comments();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentsBloc, CommentsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const SizedBox.shrink();
        }

        if (state.isError) {
          final message = state.asError.message;

          return Center(child: Text(message));
        }

        assert(state.isReady, 'Unknown state $state');

        final comments = state.asReady.comments;

        if (comments.isEmpty) {
          return const Center(
            child: Text('There are no comments for this post :('),
          );
        }

        print(comments);

        return ListView.separated(
          itemCount: comments.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            final comment = comments[index];

            return _Comment(comment);
          },
        );
      },
    );
  }
}

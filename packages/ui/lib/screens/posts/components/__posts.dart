part of '../posts_view.dart';

class _Posts extends StatelessWidget {
  const _Posts();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostsBloc, PostsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingIndicator();
        }

        if (state.isError) {
          final message = state.asError.message;
          return Center(child: Text(message));
        }

        assert(state.isReady, 'Unknown state! $state');

        final ready = state.asReady;

        final posts = ready.posts;

        if (posts.isEmpty) {
          return const Center(
            child: Text('There are no posts, come back later!'),
          );
        }

        return ListView.separated(
          itemCount: posts.length,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            final post = posts[index];

            return _Post(post);
          },
        );
      },
    );
  }
}

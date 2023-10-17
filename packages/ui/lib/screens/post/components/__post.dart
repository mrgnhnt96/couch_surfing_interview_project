part of '../post_view.dart';

class _Post extends StatelessWidget {
  const _Post();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostBloc, PostState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const LoadingIndicator();
        }

        if (state.isError) {
          final message = state.asError.message;

          return Center(child: Text(message));
        }

        assert(state.isReady, 'Unknown state $state');

        final data = state.asReady.post;

        return posts.PostCard(data);
      },
    );
  }
}

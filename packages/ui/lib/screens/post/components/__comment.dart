part of '../post_view.dart';

class _Comment extends StatelessWidget {
  _Comment(this.data) : super(key: Key(data.id));

  final Post data;

  @override
  Widget build(BuildContext context) {
    Post? post;

    final postState = context.watch<PostBloc>().state;

    if (postState.isReady) {
      post = postState.asReady.post;
    }

    return Card(
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 150),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox.square(
                    dimension: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: DecoratedBox(
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        child: Image.network(
                          data.owner.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleSmall,
                      children: [
                        TextSpan(
                          text: '@${data.owner.username}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(text: ' on '),
                        TextSpan(
                          text: '@${post?.owner.username ?? ''}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const TextSpan(text: "'s post"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              if (data.content != null) Text(data.content!),
              if (data.images.isNotEmpty)
                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: PageView.builder(
                    itemCount: data.images.length,
                    itemBuilder: (context, index) {
                      final image = data.images[index];

                      return Image.network(
                        image,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
              const SizedBox(height: 16),
              Row(
                children: <Widget>[
                  posts.IconCount(
                    icon: Icons.thumb_up_alt_rounded,
                    count: data.likesFormatted,
                  ),
                  const SizedBox(width: 8),
                  posts.IconCount(
                    icon: Icons.comment_rounded,
                    count: '${data.comments}',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

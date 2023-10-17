part of '../posts_view.dart';

class _Post extends StatelessWidget {
  _Post(this.data) : super(key: Key(data.id));

  final Post data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Paths.posts.post.define(data.id).path);
      },
      child: Card(
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
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Image.network(
                            data.owner.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '@${data.owner.username}',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(data.posted.toPrettyDate()),
                      ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

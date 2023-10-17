import 'package:interview_data/repos/posts/posts_data.dart' as data;
import 'package:interview_domain/domain.dart';

class PostsSource implements IPostsSource {
  const PostsSource();

  @override
  Future<List<Post>> all() async {
    await Future<void>.delayed(const Duration(milliseconds: 1000));

    final posts = data.posts.map(Post.fromJson);

    return posts.where((e) => e.parent == null).toList();
  }

  @override
  Future<Post?> byId(String id) async {
    await Future<void>.delayed(const Duration(milliseconds: 1000));

    final posts = data.posts.map(Post.fromJson);

    for (final post in posts) {
      if (post.id == id) {
        return post;
      }
    }

    return null;
  }

  @override
  Future<List<Post>> byUser(String userId) async {
    final posts = await all();

    final usersPosts = <Post>[];

    for (final post in posts) {
      if (post.owner.id == userId) {
        usersPosts.add(post);
      }
    }

    return usersPosts;
  }

  @override
  Future<List<Post>> commentsByUser(String userId) async {
    await Future<void>.delayed(const Duration(milliseconds: 1000));

    final posts = data.posts.map(Post.fromJson);

    final comments = <Post>[];

    for (final comment in posts) {
      if (comment.parent == null) {
        continue;
      }

      if (comment.owner.id == userId) {
        comments.add(comment);
      }
    }

    return comments;
  }

  @override
  Future<List<Post>> commentsForPost(String postId) async {
    await Future<void>.delayed(const Duration(milliseconds: 1000));

    final posts = data.posts.map(Post.fromJson);

    final comments = <Post>[];

    for (final comment in posts) {
      if (comment.parent == null) {
        continue;
      }

      if (comment.parent!.id == postId) {
        comments.add(comment);
      }
    }

    return comments;
  }
}

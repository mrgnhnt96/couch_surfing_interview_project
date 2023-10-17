import 'package:interview_domain/models/post.dart';

abstract class IPostsSource {
  const IPostsSource();

  Future<List<Post>> all();

  Future<Post> byId(String id);

  Future<List<Post>> byUser(String userId);

  Future<List<Post>> commentsForPost(String postId);

  Future<List<Post>> commentsByUser(String postId);
}

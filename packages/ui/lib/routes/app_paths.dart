import 'package:go_router_paths/go_router_paths.dart';

class Paths {
  const Paths._();

  static Path get initial => Path('');
  static Posts get posts => Posts();
  static Path get user => Path('user');
}

class Posts extends Path {
  Posts() : super('posts');

  Param get post => Param.only('postId', parent: this);
}

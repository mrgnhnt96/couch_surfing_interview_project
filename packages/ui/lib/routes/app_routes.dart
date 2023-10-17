import 'package:go_router/go_router.dart';
import 'package:interview_ui/routes/app_paths.dart';
import 'package:interview_ui/screens/screens.dart';

GoRouter appRouter() {
  return GoRouter(
    routes: [
      GoRoute(
        path: Paths.initial.goRoute,
        redirect: (_, __) => Paths.posts.path,
      ),
      GoRoute(
        path: Paths.posts.goRoute,
        builder: (_, __) {
          return const PostsScreen();
        },
        routes: [
          GoRoute(
            path: Paths.posts.post.goRoute,
            builder: (_, state) {
              final id = state.pathParameters[Paths.posts.post.id]!;

              return PostScreen(id);
            },
          ),
        ],
      ),
      GoRoute(
        path: Paths.user.goRoute,
        builder: (_, __) {
          return const UserScreen();
        },
      ),
    ],
  );
}

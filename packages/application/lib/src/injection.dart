// ignore_for_file: cascade_invocations

import 'package:get_it/get_it.dart';
import 'package:interview_application/blocs/blocs.dart';

void setup(GetIt getIt) {
  getIt.registerFactory(() => CommentsBloc(postsSource: getIt()));

  getIt.registerFactory(() => PostBloc(postsSource: getIt()));

  getIt.registerFactory(() => PostsBloc(postsSource: getIt()));

  getIt.registerFactory(() => UserBloc(usersSource: getIt()));
}

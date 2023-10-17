// ignore_for_file: cascade_invocations

import 'package:get_it/get_it.dart';
import 'package:interview_data/repos/repos.dart';
import 'package:interview_domain/domain.dart';

void setup() {
  final getIt = GetIt.asNewInstance();

  getIt.registerFactory<IPostsSource>(PostsSource.new);

  getIt.registerFactory<IUsersSource>(UsersSource.new);
}

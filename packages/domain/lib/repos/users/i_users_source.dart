import 'package:interview_domain/models/user.dart';

abstract class IUsersSource {
  const IUsersSource();

  Future<User> current();
}

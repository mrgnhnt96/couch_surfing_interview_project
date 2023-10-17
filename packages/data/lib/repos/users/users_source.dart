import 'package:interview_data/repos/users/users_data.dart' as data;
import 'package:interview_domain/domain.dart';

class UsersSource implements IUsersSource {
  const UsersSource();

  @override
  Future<User> current() async {
    final users = data.users.map(User.fromJson);

    return users.first;
  }
}

import 'package:autoequal/autoequal.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:interview_domain/domain.dart';

part 'user_bloc.g.dart';
part 'user_event.dart';
part 'user_state.dart';

// ignore: avoid_private_typedef_functions
typedef _Emitter = Emitter<UserState>;

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required IUsersSource usersSource,
  })  : _usersSource = usersSource,
        super(const _Loading()) {
    on<_Current>(_current);
  }

  final IUsersSource _usersSource;

  Future<void> _current(_Current event, _Emitter emit) async {
    emit(const _Loading());

    final user = await _usersSource.current();

    emit(_Ready(user));
  }
}

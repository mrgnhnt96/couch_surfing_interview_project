part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

class _Current extends UserEvent {
  const _Current();
}

extension UserBlocX on UserBloc {
  // ignore: library_private_types_in_public_api
  _Events get events => _Events(this);
}

class _Events {
  const _Events(this._bloc);

  final UserBloc _bloc;

  void current() {
    _bloc.add(const _Current());
  }
}

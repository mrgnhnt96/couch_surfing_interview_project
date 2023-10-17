part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();

  @override
  List<Object?> get props => [];
}

@autoequal
class _Fetch extends PostEvent {
  const _Fetch(this.id);

  final String id;

  @override
  List<Object?> get props => _$props;
}

extension PostBlocX on PostBloc {
  // ignore: library_private_types_in_public_api
  _Events get events => _Events(this);
}

class _Events {
  const _Events(this._bloc);

  final PostBloc _bloc;

  void fetch(String id) {
    _bloc.add(_Fetch(id));
  }
}

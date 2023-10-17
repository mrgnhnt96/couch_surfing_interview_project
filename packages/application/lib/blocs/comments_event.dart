part of 'comments_bloc.dart';

abstract class CommentsEvent extends Equatable {
  const CommentsEvent();

  @override
  List<Object?> get props => [];
}

@autoequal
class _Fetch extends CommentsEvent {
  const _Fetch(this.postId);

  final String postId;

  @override
  List<Object?> get props => _$props;
}

extension CommentsBlocX on CommentsBloc {
  // ignore: library_private_types_in_public_api
  _Events get events => _Events(this);
}

class _Events {
  const _Events(this._bloc);

  final CommentsBloc _bloc;

  void fetch(String postId) {
    _bloc.add(_Fetch(postId));
  }
}

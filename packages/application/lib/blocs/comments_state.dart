// ignore_for_file: library_private_types_in_public_api

part of 'comments_bloc.dart';

abstract class CommentsState extends Equatable {
  const CommentsState();

  bool get isReady => this is _Ready;
  bool get isLoading => this is _Loading;
  bool get isError => this is _Error;

  _Ready get asReady => this as _Ready;
  _Loading get asLoading => this as _Loading;
  _Error get asError => this as _Error;

  @override
  List<Object?> get props => [];
}

@autoequal
class _Ready extends CommentsState {
  const _Ready(this.comments);

  final List<Post> comments;

  @override
  List<Object?> get props => _$props;
}

class _Loading extends CommentsState {
  const _Loading();
}

@autoequal
class _Error extends CommentsState {
  const _Error(this.message);

  final String message;

  @override
  List<Object?> get props => _$props;
}

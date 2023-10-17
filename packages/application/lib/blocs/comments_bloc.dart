import 'package:autoequal/autoequal.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:interview_domain/domain.dart';

part 'comments_bloc.g.dart';
part 'comments_event.dart';
part 'comments_state.dart';

// ignore: avoid_private_typedef_functions
typedef _Emitter = Emitter<CommentsState>;

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  CommentsBloc({
    required IPostsSource postsSource,
  })  : _postsSource = postsSource,
        super(const _Loading()) {
    on<_Fetch>(_fetch);
  }

  final IPostsSource _postsSource;

  Future<void> _fetch(_Fetch event, _Emitter emit) async {
    emit(const _Loading());

    final comments = await _postsSource.commentsForPost(event.postId);

    emit(_Ready(comments));
  }
}

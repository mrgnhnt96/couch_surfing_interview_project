import 'package:autoequal/autoequal.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:interview_domain/domain.dart';

part 'post_bloc.g.dart';
part 'post_event.dart';
part 'post_state.dart';

// ignore: avoid_private_typedef_functions
typedef _Emitter = Emitter<PostState>;

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({
    required IPostsSource postsSource,
  })  : _postsSource = postsSource,
        super(const _Loading()) {
    on<_Fetch>(_fetch);
  }

  final IPostsSource _postsSource;

  Future<void> _fetch(_Fetch event, _Emitter emit) async {
    emit(const _Loading());

    final post = await _postsSource.byId(event.id);

    if (post == null) {
      emit(const _Error('Post not found!'));
      return;
    }

    emit(_Ready(post));
  }
}

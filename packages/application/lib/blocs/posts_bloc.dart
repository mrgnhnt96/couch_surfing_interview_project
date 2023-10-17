import 'package:autoequal/autoequal.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:interview_domain/domain.dart';

part 'posts_bloc.g.dart';
part 'posts_event.dart';
part 'posts_state.dart';

// ignore: avoid_private_typedef_functions
typedef _Emitter = Emitter<PostsState>;

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc({
    required IPostsSource postsSource,
  })  : _postsSource = postsSource,
        super(const _Loading()) {
    on<_Init>(_init);

    add(const _Init());
  }

  final IPostsSource _postsSource;

  Future<void> _init(_Init event, _Emitter emit) async {
    emit(const _Loading());

    final posts = await _postsSource.all();

    emit(_Ready(posts));
  }
}

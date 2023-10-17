import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_application/application.dart';
import 'package:interview_domain/domain.dart';

part 'components/__activity.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        User? user;

        if (state.isReady) {
          user = state.asReady.user;
        }
        return Scaffold(
          appBar: AppBar(
            title: Text(
              user?.username == null ? 'loading' : '@${user!.username}',
            ),
          ),
          body: Builder(
            builder: (context) {
              if (user == null) {
                return const SizedBox.shrink();
              }

              return Column(
                children: [
                  const SizedBox(height: 24),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: SizedBox.square(
                      dimension: 100,
                      child: user.image == null
                          ? null
                          : Image.network(
                              user.image!,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        user.firstName,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        user.lastName,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      user.about,
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Expanded(child: _Activity()),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_application/application.dart';

import 'package:interview_ui/screens/user/user_view.dart';
import 'package:interview_ui/src/injection.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<UserBloc>(),
      child: const UserView(),
    );
  }
}

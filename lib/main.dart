import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:interview_application/application.dart' as application
    show setup;
import 'package:interview_data/data.dart' as data show setup;
import 'package:interview_ui/ui.dart' as ui show setup;
import 'package:interview_ui/ui.dart' hide setup;

void main() {
  final getIt = GetIt.asNewInstance();

  data.setup(getIt);
  application.setup(getIt);
  ui.setup(getIt);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter router;

  @override
  void initState() {
    super.initState();
    router = appRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Couch Surfing Interview Project',
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'couch_surfing_interview_project',
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

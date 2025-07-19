import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:move_by/routes/paths.dart';

class Routes {
  static final router = GoRouter(
    initialLocation: Paths.homePage,
    routes: [GoRoute(path: Paths.homePage, builder: (context, state)=> BlocProvider(create: (context)=> , child: HomePage(),))],
  );
}

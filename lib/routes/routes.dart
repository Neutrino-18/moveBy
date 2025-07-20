import 'package:go_router/go_router.dart';
import 'package:move_by/features/home_screen.dart/presentation/pages/home_screen.dart';
import 'package:move_by/routes/paths.dart';

class Routes {
  static final router = GoRouter(
    initialLocation: Paths.homePage,
    routes: [GoRoute(path: Paths.homePage, builder: (context, state)=> HomeScreen())],
  );
}

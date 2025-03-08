import 'package:go_router/go_router.dart';
import 'package:thepilot/features/login/presentation/pages/login_screen.dart';

class AppRoutes {
  static GoRouter routerConfig = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) {
          return LoginScreen();
        },
      ),
    ],
  );
}

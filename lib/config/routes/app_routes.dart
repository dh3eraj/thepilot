import 'package:go_router/go_router.dart';
import 'package:thepilot/features/dashboard/presentation/pages/dashboard_screen.dart';
import 'package:thepilot/features/home/presentation/pages/home_screen.dart';
import 'package:thepilot/features/home/presentation/pages/student_stats_screen.dart';
import 'package:thepilot/features/login/presentation/pages/login_screen.dart';

class AppRoutes {
  static GoRouter routerConfig = GoRouter(
    initialLocation: '/dashboard',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) {
          return LoginScreen();
        },
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) {
          return HomeScreen();
        },
      ),
      GoRoute(
        path: '/student-stats',
        builder: (context, state) {
          return StudentStatsScreen();
        },
      ),
           GoRoute(
        path: '/dashboard',
        builder: (context, state) {
          return DashboardScreen();
        },
      ),
    ],
  );
}

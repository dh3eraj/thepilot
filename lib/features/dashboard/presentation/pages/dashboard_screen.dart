import 'package:flutter/material.dart';
import 'package:thepilot/features/home/presentation/pages/home_screen.dart';
import 'package:thepilot/features/home/presentation/pages/student_stats_screen.dart';
import 'package:thepilot/features/login/presentation/pages/login_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [LoginScreen(), HomeScreen(), StudentStatsScreen()],
    );
  }
}

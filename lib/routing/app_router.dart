import 'package:aikivemobile/ui/landing_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: LandingScreen.path,
  routes: [
    GoRoute(
      path: LandingScreen.path,
      builder: (_, __) => const LandingScreen(),
    ),
  ],
);

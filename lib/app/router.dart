import 'package:go_router/go_router.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/home/home_page.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/settings_page.dart';

GoRouter buildRouter() {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
  );
}

import 'package:go_router/go_router.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/annuncio.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/home/home_page.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/settings_page.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/single_annuncio_page.dart';

GoRouter buildRouter() {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/annuncio/single',
        builder: (context, state) => SingleAnnuncioPage(
          annuncio: state.extra! as Annuncio,
        ),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsPage(),
      ),
    ],
  );
}

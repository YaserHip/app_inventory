import 'package:app_inventory/app/app_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/home/page_home.dart';
import '../features/login/page_login.dart';
import 'not_found_page.dart';

enum AppRoute {
  login,
  home,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) async {
      final account = ref.watch(awAccountProvider);
      var isLogged = false;
      try {
        await account.get();
        isLogged = true;
      } on Exception catch (e, _) {}

      if (isLogged) {
        if (state.subloc.startsWith('/login')) {
          return '/';
        }
      } else {
        if (state.subloc.startsWith('/')) {
          return '/login';
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.home.name,
        builder: (context, state) => const PageHome(),
      ),
      GoRoute(
        path: '/login',
        name: AppRoute.login.name,
        builder: (context, state) => const PageLogin(),
      )
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );
});

import 'package:app_inventory/app/features/login/repository_login.dart';
import 'package:app_inventory/app/routing/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PageLogin extends ConsumerWidget {
  const PageLogin({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nav = GoRouter.of(context);
    return Container(
      color: Colors.white,
      child: Center(
        child: ElevatedButton(
          child: const Text('Iniciar sesion'),
          onPressed: () async {
            final session = await ref
                .watch(authGoogleSessionProvider(provider: 'google').future);

            if (session) {
              nav.goNamed(AppRoute.home.name);
            }
          },
        ),
      ),
    );
  }
}

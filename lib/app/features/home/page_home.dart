import 'package:app_inventory/app/app_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageHome extends ConsumerWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accountProv = ref.watch(awAccountProvider);
    return Container(
      color: Colors.amber,
      child: Center(
          child: ElevatedButton(
        child: Text('Logout'),
        onPressed: () async {
          await accountProv.deleteSession(sessionId: 'current');
        },
      )),
    );
  }
}

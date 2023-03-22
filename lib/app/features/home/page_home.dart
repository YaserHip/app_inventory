import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageHome extends ConsumerWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.amber,
      child: Center(
          child: ElevatedButton(
        child: const Text('Agregar'),
        onPressed: () async {},
      )),
    );
  }
}

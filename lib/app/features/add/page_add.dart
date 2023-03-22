import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageAdd extends ConsumerStatefulWidget {
  const PageAdd({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PageAddState();
}

class _PageAddState extends ConsumerState<PageAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnnunciScreen extends ConsumerWidget {
  const AnnunciScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return const Center(
      child: Text("AnnunciScreen"),
    );
  }
}

// ignore_for_file: prefer_const_constructors_in_immutables, library_prefixes

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/models/home_tab_model.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/home/screen/annunci/annunci_screen.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/home/screen/preferiti_screen.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/pages/home/screen/progetti_screen.dart';

final indexTabProvider = StateProvider<int>((ref) => 0);

final List<HomeTab> tabList = [
  HomeTab(
    label: "Annunci",
    icon: Icons.topic,
    content: const AnnunciScreen(),
  ),
  HomeTab(
    label: "Progetti",
    icon: Icons.person,
    content: const ProgettiScreen(),
  ),
  HomeTab(
    label: "Preferiti",
    icon: Icons.favorite_border,
    content: const PreferitiScreen(),
  ),
];

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Hackathon Fudeo",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              iconSize: 24,
              icon: const Icon(Icons.settings_outlined),
              onPressed: () => context.push('/settings'),
            ),
          )
        ],
      ),
      body: tabList[ref.watch(indexTabProvider)].content,
      bottomNavigationBar: NavigationBar(
        backgroundColor: colorScheme.primaryContainer,
        onDestinationSelected: (int index) {
          ref.read(indexTabProvider.notifier).state = index;
        },
        selectedIndex: ref.watch(indexTabProvider),
        destinations: tabList
            .map(
              (singleScreenTab) => NavigationDestination(
                icon: Icon(singleScreenTab.icon),
                label: singleScreenTab.label,
              ),
            )
            .toList(),
      ),
    );
  }
}

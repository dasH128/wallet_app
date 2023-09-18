import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet_app/presentation/providers/home/button_navigator_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu',
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: const NotificationListener(
          child: Center(
        child: Text('center'),
      )),
      floatingActionButton: IconButton.filled(
        icon: const Icon(Icons.add),
        onPressed: () {},
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const _BottomNavigationBarView(),
    );
  }
}

class _BottomNavigationBarView extends ConsumerWidget {
  const _BottomNavigationBarView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int buttonNavigatorIndex = ref.watch(buttonNavigatorProvider);

    final color = Theme.of(context).colorScheme;
    var iconList = [Icons.abc, Icons.percent, Icons.animation, Icons.person];
    return AnimatedBottomNavigationBar(
      backgroundColor: color.primaryContainer,
      icons: iconList,
      activeIndex: buttonNavigatorIndex,
      activeColor: color.primary,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (index) {
        ref.read(buttonNavigatorProvider.notifier).update((state) => index);
      },
      //other params
    );
  }
}

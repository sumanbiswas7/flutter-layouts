import 'package:brew/themes/theme.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  final Function(int) onTap;

  const Tabbar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: TabBar(
          onTap: onTap,
          isScrollable: true,
          labelColor: AppThemes.colors[AppColors.accent],
          unselectedLabelColor: AppThemes.colors[AppColors.textSecondary],
          // indicatorColor: AppThemes.colors[AppColors.accent],
          indicatorColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: const [
            Tab(child: Text("Cappuchino")),
            Tab(child: Text("Espresso")),
            Tab(child: Text("Latte")),
            Tab(child: Text("Flatwhite")),
          ]),
    );
  }
}

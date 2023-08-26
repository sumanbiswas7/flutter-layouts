import 'package:brew/themes/theme.dart';
import 'package:flutter/material.dart';

class AppBottomNavbar extends StatelessWidget {
  const AppBottomNavbar({Key? key});

  @override
  Widget build(BuildContext context) {
    return MyBottomNavbar();
  }
}

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({Key? key});

  @override
  _MyBottomNavbarState createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.home_filled),
          label: 'Home',
          backgroundColor: AppThemes.colors[AppColors.navbar],
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.trolley),
          label: 'Cart',
          backgroundColor: AppThemes.colors[AppColors.navbar],
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.heart_broken),
          label: 'Loved',
          backgroundColor: AppThemes.colors[AppColors.navbar],
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.notifications),
          label: 'Notifications',
          backgroundColor: AppThemes.colors[AppColors.navbar],
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: AppThemes.colors[AppColors.accent],
      unselectedItemColor: AppThemes.colors[AppColors.textSecondary],
      onTap: _onItemTapped,
      backgroundColor: AppThemes.colors[AppColors.navbar],
    );
  }
}

import 'package:brew/themes/theme.dart';
import 'package:flutter/material.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            color: AppThemes.colors[AppColors.card],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            "assets/icons/menu.png",
            width: 30,
            color: AppThemes.colors[AppColors.textSecondary],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            color: AppThemes.colors[AppColors.card],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.supervised_user_circle,
            color: AppThemes.colors[AppColors.textSecondary],
            size: 30,
          ),
        ),
      ],
    );
  }
}

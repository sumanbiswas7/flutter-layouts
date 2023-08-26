import 'package:brew/themes/theme.dart';
import 'package:flutter/material.dart';

class BigTitleText extends StatelessWidget {
  const BigTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Find the best \ncoffee for you",
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 37,
        fontWeight: FontWeight.w600,
        color: AppThemes.colors[AppColors.textPrimary],
      ),
    );
  }
}
